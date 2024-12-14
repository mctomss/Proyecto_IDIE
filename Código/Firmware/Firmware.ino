#include <Arduino.h>
#include <WiFi.h>
#include <ESPAsyncWebServer.h>
#include <AsyncTCP.h>
#include "LittleFS.h"
#include <ThingerESP32.h>
#include <math.h>
#include <SPI.h>

#define THINGER_SERIAL_DEBUG
// Crear un servidor web en el puerto 80
AsyncWebServer server(80);

// Rutas de archivos para LittleFS
#define SSID_PATH "/ssid.txt"
#define PASS_PATH "/pass.txt"
#define MUSER_PATH "/muser.txt"
#define DEVICE_ID_PATH "/device_id.txt"
#define DEVICE_KEY_PATH "/device_key.txt"

// Pines SPI (Configurados para ESP32 Mini Pico 02)
#define CS_PIN 5   // CS
#define SCK_PIN 18 // SCK
#define MISO_PIN 19 // MISO
#define MOSI_PIN 23 // MOSI

// Dirección de registros del ADE9153A
#define CONFIG0_REG 0x0000 // Dirección del registro de configuración

// Variables globales
String ssid;
String pass;
String muser;
String device_id;
String device_key;
ThingerESP32 *thing = nullptr;

// Variables para almacenar datos del sensor
float voltage = 0.0;
float current = 0.0;
float activePower = 0.0;
float reactivePower = 0.0;
float apparentPower = 0.0;
float FP = 0.0;

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

  WiFi.begin(ssid.c_str(), pass.c_str());
  Serial.print("Conectando a WiFi...");

  unsigned long startMillis = millis();
  while (WiFi.status() != WL_CONNECTED && millis() - startMillis < 15000) {
    Serial.print(".");
    delay(500);
  }

  if (WiFi.status() != WL_CONNECTED) {
    Serial.println("\nFallo en la conexión WiFi, iniciando modo AP.");
    return false;
  }

  Serial.println("\nConexión WiFi exitosa. IP: " + WiFi.localIP().toString());
  return true;
}

void writeRegister(uint16_t regAddress, uint32_t value) {
  digitalWrite(CS_PIN, LOW);
  SPI.transfer((regAddress >> 8) & 0xFF); // Parte alta de la dirección
  SPI.transfer(regAddress & 0xFF);        // Parte baja de la dirección
  SPI.transfer((value >> 24) & 0xFF);     // Byte alto
  SPI.transfer((value >> 16) & 0xFF);
  SPI.transfer((value >> 8) & 0xFF);
  SPI.transfer(value & 0xFF);             // Byte bajo
  digitalWrite(CS_PIN, HIGH);
}

uint32_t readRegister(uint16_t regAddress) {
  uint32_t rawData = 0;
  digitalWrite(CS_PIN, LOW);
  SPI.transfer((regAddress >> 8) & 0xFF); // Parte alta de la dirección
  SPI.transfer(regAddress & 0xFF);        // Parte baja de la dirección
  rawData |= (SPI.transfer(0x00) << 24);
  rawData |= (SPI.transfer(0x00) << 16);
  rawData |= (SPI.transfer(0x00) << 8);
  rawData |= SPI.transfer(0x00);
  digitalWrite(CS_PIN, HIGH);
  return rawData;
}

float convertToFloat(uint32_t rawData) {
  return static_cast<float>(rawData);
}

void initADE9135() {
  SPI.begin(SCK_PIN, MISO_PIN, MOSI_PIN, CS_PIN);
  pinMode(CS_PIN, OUTPUT);
  digitalWrite(CS_PIN, HIGH);

  Serial.println("Configurando ADE9153A...");

  // Configurar el registro CONFIG0 para activar los filtros
  writeRegister(CONFIG0_REG, 0x000001);

  Serial.println("ADE9153A configurado.");
}

void getSensorData(float &voltage, float &current, float &activePower, float &reactivePower, float &apparentPower) {
  uint16_t regVoltage = 0x043C;       // AVRMS
  uint16_t regCurrent = 0x0434;       // AIRMS
  uint16_t regActivePower = 0x0440;   // AWATT
  uint16_t regReactivePower = 0x0448; // AFVAR
  uint16_t regApparentPower = 0x0450; // AVA

  voltage = convertToFloat(readRegister(regVoltage)) / 1000.0;
  current = convertToFloat(readRegister(regCurrent)) / 1000.0;
  activePower = convertToFloat(readRegister(regActivePower)) / 1000.0;
  reactivePower = convertToFloat(readRegister(regReactivePower)) / 1000.0;
  apparentPower = convertToFloat(readRegister(regApparentPower)) / 1000.0;
}

void updateSensorData() {
  getSensorData(voltage, current, activePower, reactivePower, apparentPower);
}

void setup() {
  Serial.begin(115200);
  
  pinMode(21, OUTPUT); //Rele 
  pinMode(29, OUTPUT); //Led Red
  pinMode(28, OUTPUT); //Led Blue
  pinMode(27, OUTPUT); //Led Green
  initLittleFS();

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
    WiFi.softAP("WiFi-Energy");
    IPAddress AP_IP = WiFi.softAPIP();
    Serial.println("Modo AP habilitado.");
    Serial.print("IP del AP: ");
    Serial.println(AP_IP);

    server.on("/", HTTP_GET, [](AsyncWebServerRequest *request) {
      request->send(LittleFS, "/wifimanager.html");
    });

    server.serveStatic("/", LittleFS, "/");

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
      ESP.restart();
    });

    server.begin();
  } else {
    initADE9135();

    thing = new ThingerESP32(muser.c_str(), device_id.c_str(), device_key.c_str());
    //Control de rele
    (*thing)["Relay"] << digitalPin(21);
    //Sensores
    (*thing)["Voltage"] >> outputValue(voltage);
    (*thing)["Current"] >> outputValue(current);
    (*thing)["Active_pow"] >> outputValue(activePower);
    (*thing)["Reactive_pow"] >> outputValue(reactivePower);
    (*thing)["Apparent_pow"] >> outputValue(apparentPower);
    (*thing)["FP"] >> outputValue(FP);
    (*thing)["FP_State"] >> [](pson &out) {
      if (FP >= 0.9) {
        out = "Eficient";
      } else if (FP >= 0.8 && FP < 0.9) {
        out = "Regular";
      } else if (FP >= 0 && FP < 0.8) {
        out = "Inefficient";
      } else {
        out = "Warning";
      }
    };
    (*thing)["Current_State"] >> [](pson &out) {
      if (current < 10) {
        out = "Low";
      } else if (FP >= 10 && FP < 20) {
        out = "Regular";
      } else {
        out = "Danger.";
      }
    };

    Serial.println("Conexión a Thinger.io configurada.");
  }
}

void loop() {
  updateSensorData();
  if (thing != nullptr) {
    thing->handle();
  }
  delay(500); //valor de tiempo para actualizar datos.
  FP = cos(atan(reactivePower / activePower));
}
