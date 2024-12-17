/*
Autores: Tomás Felipe Montañez Piñeros
         Juan Andrés Rodríguez Ruiz
         Juan Andrés Abella Ballen
Escuela Colombiana de Ingenieria Julio Garavito.
SmartEnergy LinkMQ
16 de diciembre de 2024
*/

/*
Recomendaciones:
*Es necesario tener los archivos ADE9153A.h, ADE9153AAPI.h y ADE9153AAPI.cpp
 en la misma carpeta que el archivo Firmware.ino
*Es necesario tener los archivos wifimanager.html y style.css en la carpeta data,
 la cual se encuentra en la misma carpeta que el archivo Firmware.ino
*Es posible que no se ejecute correctamente si se usa el archivo ADE9153AAPI.cpp
 original de Analog Devices, deibdo a que se le realizó un cambio a la inicilización del SPI 
*/

// Librerías
#define THINGER_SERIAL_DEBUG // Habilitar depuración del MQTT
#include <Arduino.h> // Librería principal de Arduino
#include <WiFi.h> // Librería para conexión WiFi
#include <ESPAsyncWebServer.h> // Librería para servidor web
#include <AsyncTCP.h> // Librería para conexión TCP
#include "LittleFS.h" // Librería para sistema de archivos
#include <ThingerESP32.h> // Librería para Thinger.io
#include <SPI.h> // Librería para comunicación SPI
#include "ADE9153A.h" // Librería para registros del ADE9153A
#include "ADE9153AAPI.h" // Librería para funciones del ADE9153A

// Crear un servidor web en el puerto 80
AsyncWebServer server(80);

// Rutas de archivos para LittleFS
#define SSID_PATH "/ssid.txt"
#define PASS_PATH "/pass.txt"
#define MUSER_PATH "/muser.txt"
#define DEVICE_ID_PATH "/device_id.txt"
#define DEVICE_KEY_PATH "/device_key.txt"

// Definción de pines para el SPI 
#define SPI_SPEED 2000000     // Velocidad SPI ajustada a 2 MHz
#define CS_PIN 32 // Pin de Chip Select
#define SCK_PIN 33   // Pin de Reloj
#define MISO_PIN 25  // Pin de MISO
#define MOSI_PIN 26  // Pin de MOSI
#define LED 8 // Pin del LED de Calibración
#define RESET_PIN 27  // Pin de RESET
ADE9153AClass ade9153A; // Instancia de la clase ADE9153A

// Relé
#define RELAY_PIN 15 // Pin del relé
#define LED1 5 // Pin del LED 1
#define LED2 7 // Pin del LED 2

// Variables globales para almacenar la configuración de WiFi y Thinger.io
String ssid;
String pass;
String muser;
String device_id;
String device_key;
int i=0; // Variable para hacer la calibración del ADE9153A
ThingerESP32 *thing = nullptr; // Instancia de Thinger.io

// Estructuras para almacenar los registros del ADE9153A
struct PowerRegs powerVals;     
struct RMSRegs rmsVals;
struct EnergyRegs energyVals;
struct PQRegs pqVals;
struct AcalRegs acalVals;

// Prototipos de funciones del ADE9153A
void readandwrite(void);
void resetADE9153A(void);
void runLenght(long);

// Variables para el reporte de datos
unsigned long lastReport = 0;
const long reportInterval = 2000;  // Cada 2 segundos
const long SwitchToggleInterval = 2500;
const long blinkInterval = 500;

// Variables para el envío de datos
char buffer[200];

// Variables para el envío de mensajes
unsigned long lastMsg = 0;
char randNumber;

// Función para inicializar LittleFS
void initLittleFS() {
  if (!LittleFS.begin(true)) {
    Serial.println("Error al montar LittleFS");
    return;
  }
  Serial.println("LittleFS montado correctamente");
}

// Función para leer un archivo
String readFile(const char *path) {
  File file = LittleFS.open(path);
  if (!file || file.isDirectory()) {
    return String();
  }
  String content = file.readStringUntil('\n');
  file.close();
  return content;
}

// Función para escribir un archivo
void writeFile(const char *path, const char *message) {
  File file = LittleFS.open(path, FILE_WRITE);
  if (file) {
    file.print(message);
    file.close();
  }
}

// Función para restablecer configuración
void resetLittleFS() {
  LittleFS.format();
  Serial.println("Configuración restablecida.");
}

// Función para conectarse a WiFi
bool connectToWiFi() {
  if (ssid.isEmpty() || pass.isEmpty()) {
    Serial.println("SSID o contraseña no definidos, iniciando modo AP.");
    return false;
  }
  // Conexión a WiFi
  WiFi.begin(ssid.c_str(), pass.c_str());
  Serial.print("Conectando a WiFi...");
  // Esperar 15 segundos para conectarse
  unsigned long startMillis = millis();
  while (WiFi.status() != WL_CONNECTED && millis() - startMillis < 15000) {
    Serial.print(".");
    delay(500);
  }
  // Verificar si se conectó
  if (WiFi.status() != WL_CONNECTED) {
    Serial.println("\nFallo en la conexión WiFi, iniciando modo AP.");
    return false;
  }
  // Mostrar conexión exitosa y dirección IP
  Serial.println("\nConexión WiFi exitosa. IP: " + WiFi.localIP().toString());
  return true;
}


void setup() {
  Serial.begin(115200); // Iniciar comunicación serial
  // Configurar pines de SPI
  pinMode(CS_PIN, OUTPUT);   
  pinMode(RELAY_PIN, OUTPUT);
  digitalWrite(RELAY_PIN, HIGH);
  pinMode(LED1, OUTPUT);
  digitalWrite(LED1, LOW);
  pinMode(LED2, OUTPUT);
  digitalWrite(LED2, LOW);
  initLittleFS(); // Inicializar LittleFS

  // Leer configuración desde LittleFS
  ssid = readFile(SSID_PATH);
  pass = readFile(PASS_PATH);
  muser = readFile(MUSER_PATH);
  device_id = readFile(DEVICE_ID_PATH);
  device_key = readFile(DEVICE_KEY_PATH);

  // Imprimir valores para depuración
  Serial.println("SSID: " + ssid);
  Serial.println("Password: " + pass);
  Serial.println("User: " + muser);
  Serial.println("Device ID: " + device_id);
  Serial.println("Device Key: " + device_key);

  if (!connectToWiFi()) {
    // Configurar modo AP para configuración
    digitalWrite(LED1, HIGH);
    WiFi.softAP("WiFi-Energy");
    IPAddress AP_IP = WiFi.softAPIP();
    Serial.println("Modo AP habilitado.");
    Serial.print("IP del AP: ");
    Serial.println(AP_IP);
    server.on("/", HTTP_GET, [](AsyncWebServerRequest *request) {
      request->send(LittleFS, "/wifimanager.html");
    });
    // Configurar servidor web con los archivos de la página
    server.serveStatic("/", LittleFS, "/");
    // Configurar ruta para guardar configuración
    server.on("/", HTTP_POST, [](AsyncWebServerRequest *request) {
      int params = request->params();
      for (int i = 0; i < params; i++) {
        const AsyncWebParameter *p = request->getParam(i);
        if (p->isPost()) {
          if (p->name() == "ssid") {
            ssid = p->value();
            writeFile(SSID_PATH, ssid.c_str());
          } else if (p->name() == "pass") {
            pass = p->value();
            writeFile(PASS_PATH, pass.c_str());
          } else if (p->name() == "muser") {
            muser = p->value();
            writeFile(MUSER_PATH, muser.c_str());
          } else if (p->name() == "device_id") {
            device_id = p->value();
            writeFile(DEVICE_ID_PATH, device_id.c_str());
          } else if (p->name() == "device_key") {
            device_key = p->value();
            writeFile(DEVICE_KEY_PATH, device_key.c_str());
          }
        }
      }
      request->send(200, "text/plain", "Configuración guardada. Reiniciando...");
      delay(3000);
      ESP.restart(); // Reiniciar ESP con la nueva configuración
    });
    server.begin(); // Iniciar servidor web
  } else {
    // Configurar Thinger.io
    digitalWrite(LED2, HIGH);
    thing = new ThingerESP32(muser.c_str(), device_id.c_str(), device_key.c_str());
    (*thing)["Relay"] << digitalPin(15); 
    (*thing)["Active_pow"] >> outputValue(powerVals.ActivePowerValue/1000);
    (*thing)["Reactive_pow"] >> outputValue(powerVals.FundReactivePowerValue/1000);
    (*thing)["Apparent_pow"] >> outputValue(powerVals.ApparentPowerValue/1000);
    (*thing)["Voltage"] >> outputValue(rmsVals.VoltageRMSValue/1000);
    (*thing)["Current"] >> outputValue(rmsVals.CurrentRMSValue/1000);
    (*thing)["FP"] >> outputValue(pqVals.PowerFactorValue);
    (*thing)["Frequency"] >> outputValue(pqVals.FrequencyValue);
    (*thing)["Active_ene"] >> outputValue(energyVals.ActiveEnergyValue/1000);
    (*thing)["Reactive_ene"] >> outputValue(energyVals.FundReactiveEnergyValue/1000);
    (*thing)["Apparent_energy"] >> outputValue(energyVals.ApparentEnergyValue/1000);
    Serial.println("Conexión a Thinger.io configurada.");
  }
  resetADE9153A(); // Restablecer ADE9153A para configuración
  delay(1000);
  // Inicializar ADE9153A
  bool commscheck = ade9153A.SPI_Init(SPI_SPEED, CS_PIN, MISO_PIN, MOSI_PIN, SCK_PIN);
  if (!commscheck) {
    Serial.println("ADE9153A no detectado");
    while (!commscheck) { // Esperar hasta que se detecte el ADE9153A
      delay(1000);
    }
  }
  // Configurar ADE9153A
  ade9153A.SetupADE9153A();
  ade9153A.SPI_Write_32(REG_AIGAIN, -268435456);
}

void loop() {
  //Calibración del ADE9153A
  if (i == 0) {
    Serial.println("Autocalibrating Current Channel");
    ade9153A.StartAcal_AINormal();
    runLenght(20);
    ade9153A.StopAcal();
    Serial.println("Autocalibrating Voltage Channel");
    ade9153A.StartAcal_AV();
    runLenght(40);
    ade9153A.StopAcal();
    delay(100);
    //Lectura de registros de calibración
    ade9153A.ReadAcalRegs(&acalVals);
    Serial.print("AICC: ");
    Serial.println(acalVals.AICC);
    Serial.print("AICERT: ");
    Serial.println(acalVals.AcalAICERTReg);
    Serial.print("AVCC: ");
    Serial.println(acalVals.AVCC);
    Serial.print("AVCERT: ");
    Serial.println(acalVals.AcalAVCERTReg);
    //Configuración de ganancias
    long Igain = (-(acalVals.AICC / 838.190) - 1) * 134217728;
    long Vgain = ((acalVals.AVCC / 13411.05) - 1) * 134217728;
    ade9153A.SPI_Write_32(REG_AIGAIN, Igain);
    ade9153A.SPI_Write_32(REG_AVGAIN, Vgain);
    Serial.println("Autocalibration Complete");
    delay(2000);
    i = 1;
  }
  //Lectura de registros del ADE9153A
  unsigned long currentReport = millis();
  if (currentReport - lastReport >= reportInterval) {
    readandwrite();
    lastReport = currentReport;
  }
  //Envío de datos a Thinger.io
  if (thing != nullptr) {
    thing->handle();
  }
}
//Función para leer y escribir registros del ADE9153A
void readandwrite() {
  ade9153A.ReadPowerRegs(&powerVals);
  ade9153A.ReadRMSRegs(&rmsVals);
  ade9153A.ReadPQRegs(&pqVals);
  ade9153A.ReadEnergyRegs(&energyVals);
  //Imprimir valores de corriente eficaz
  Serial.print("RMS Current:\t");        
  Serial.print(rmsVals.CurrentRMSValue / 1000); 
  Serial.println(" A");
  //Imprimir valores de voltaje eficaz
  Serial.print("RMS Voltage:\t");        
  Serial.print(rmsVals.VoltageRMSValue / 1000);
  Serial.println(" V");
  //Imprimir valores de potencia activa
  Serial.print("Active Power:\t");        
  Serial.print(powerVals.ActivePowerValue / 1000);
  Serial.println(" W");
  //Imprimir valores de potencia reactiva
  Serial.print("Reactive Power:\t");        
  Serial.print(powerVals.FundReactivePowerValue / 1000);
  Serial.println(" VAR");
  //Imprimir valores de potencia aparente
  Serial.print("Apparent Power:\t");        
  Serial.print(powerVals.ApparentPowerValue / 1000);
  Serial.println(" VA");
  //Imprimir valores de factor de potencia
  Serial.print("Power Factor:\t");        
  Serial.println(pqVals.PowerFactorValue);
  //Imprimir valores de frecuencia
  Serial.print("Frequency:\t");        
  Serial.print(pqVals.FrequencyValue);
  Serial.println(" Hz");
  //Imprimir valores de energía activa
  Serial.print("Active Energy:\t");
  Serial.print(energyVals.ActiveEnergyValue / 1000);
  Serial.println(" Wh");  
  //Imprimir valores de energía reactiva
  Serial.print("Reactive Energy:\t");
  Serial.print(energyVals.FundReactiveEnergyValue / 1000);
  Serial.println(" VARh");
  //Imprimir valores de energía aparente
  Serial.print("Apparent Energy:\t");
  Serial.print(energyVals.ApparentEnergyValue / 1000);
  Serial.println(" VAh");

  Serial.println("");
  Serial.println("");
}
//Función para restablecer el ADE9153A
void resetADE9153A(void) {
  digitalWrite(RESET_PIN, LOW);
  delay(100);
  digitalWrite(RESET_PIN, HIGH);
  delay(1000);
  Serial.println("Reset Done");
}
//Función para la duración de la calibración
void runLenght(long seconds) {
  unsigned long startTime = millis();
  
  while (millis() - startTime < (seconds * 1000)) {
    digitalWrite(LED, HIGH);
    delay(blinkInterval);
    digitalWrite(LED, LOW);
    delay(blinkInterval);
  }
}
