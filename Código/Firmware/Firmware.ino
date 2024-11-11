#define THINGER_SERIAL_DEBUG
#include <Arduino.h>
#include <WiFi.h>
#include <ESPAsyncWebServer.h>
#include <AsyncTCP.h>
#include "LittleFS.h"
#include <ThingerESP32.h>

// Crear un servidor web en el puerto 80
AsyncWebServer server(80);

// Variables para buscar los valores de los campos del formulario
const char* PARAM_INPUT_1 = "ssid";
const char* PARAM_INPUT_2 = "pass";
const char* PARAM_INPUT_3 = "muser";
const char* PARAM_INPUT_4 = "device_id";
const char* PARAM_INPUT_5 = "device_key";
const char* PARAM_INPUT_6 = "ip";
const char* PARAM_INPUT_7 = "gateway";

// Variables para almacenar los valores de los campos del formulario
String ssid;
String pass;
String muser;
String device_id;
String device_key;
String ip;
String gateway;

// Paths para almacenar los valores de los campos del archivo
const char* ssidPath = "/ssid.txt";
const char* passPath = "/pass.txt";
const char* muserPath = "/muser.txt";
const char* device_idPath = "/device_id.txt";
const char* device_keyPath = "/device_key.txt";
const char* ipPath = "/ip.txt";
const char* gatewayPath = "/gateway.txt";

// Definir la clase ThingerESP32
//ThingerESP32* thing;

//Configuración de la red
IPAddress localIP;
IPAddress localGateway;
IPAddress subnet(255, 255, 0, 0);

//Variables temporales
unsigned long previousMillis = 0;
const long interval = 10000;

//Inicializar el sistema de archivos LittleFS
void initLittleFS() {
  if (!LittleFS.begin(true)) {
    Serial.println("An error has occurred while mounting LittleFS");
  }
  Serial.println("LittleFS mounted successfully");
}

//Función para leer un archivo
String readFile(fs::FS &fs, const char * path){
  Serial.printf("Reading file: %s\r\n", path);

  File file = fs.open(path);
  if(!file || file.isDirectory()){
    Serial.println("- failed to open file for reading");
    return String();
  }
  
  String fileContent;
  while(file.available()){
    fileContent = file.readStringUntil('\n');
    break;     
  }
  return fileContent;
}

//Función para escribir un archivo
void writeFile(fs::FS &fs, const char * path, const char * message){
  Serial.printf("Writing file: %s\r\n", path);

  File file = fs.open(path, FILE_WRITE);
  if(!file){
    Serial.println("- failed to open file for writing");
    return;
  }
  if(file.print(message)){
    Serial.println("- file written");
  } else {
    Serial.println("- write failed");
  }
}

//Función para inicializar la red WiFi
bool initWiFi() {
  if(ssid=="" || ip==""){
    Serial.println("Undefined SSID or IP address.");
    return false;
  }

  WiFi.mode(WIFI_STA);
  localIP.fromString(ip.c_str());
  localGateway.fromString(gateway.c_str());


  if (!WiFi.config(localIP, localGateway, subnet)){
    Serial.println("STA Failed to configure");
    return false;
  }
  WiFi.begin(ssid.c_str(), pass.c_str());
  Serial.println("Connecting to WiFi...");

  unsigned long currentMillis = millis();
  previousMillis = currentMillis;

  while(WiFi.status() != WL_CONNECTED) {
    currentMillis = millis();
    if (currentMillis - previousMillis >= interval) {
      Serial.println("Failed to connect.");
      return false;
    }
  }

  Serial.println(WiFi.localIP());
  return true;
}

void setup(){
    Serial.begin(115200);// Iniciar el puerto serie
    initLittleFS();
    // Lectura de los valores almacenados en los archivos
    ssid = readFile(LittleFS, ssidPath);
    pass = readFile(LittleFS, passPath);
    muser = readFile(LittleFS, muserPath);
    device_id = readFile(LittleFS, device_idPath);
    device_key = readFile(LittleFS, device_keyPath);
    ip = readFile(LittleFS, ipPath);
    gateway = readFile (LittleFS, gatewayPath);
    Serial.println(ssid);
    Serial.println(pass);
    Serial.println(muser);
    Serial.println(device_id);
    Serial.println(device_key);
    Serial.println(ip);
    Serial.println(gateway);
    //
    if(initWiFi()) {
        // Código para ejecutar si la conexión a la red WiFi es exitosa
        /*thing = new ThingerESP32(muser.c_str(), device_id.c_str(), device_key.c_str()); // Inicializar la clase ThingerESP32
        pinMode(16, OUTPUT);
        // digital pin control example (i.e. turning on/off a light, a relay, configuring a parameter, etc)
        (*thing)["GPIO_16"] << digitalPin(16);

        // resource output example (i.e. reading a sensor value)
        (*thing)["millis"] >> outputValue(millis());*/
    }
    else {
        // Configurar el ESP32 como un punto de acceso
        Serial.println("Setting AP (Access Point)");
        // NULL indica que no se requiere contraseña
        WiFi.softAP("ESP-WIFI-MANAGER", NULL);

        IPAddress IP = WiFi.softAPIP();
        Serial.print("AP IP address: ");
        Serial.println(IP); 

        // Configurar el servidor web
        server.on("/", HTTP_GET, [](AsyncWebServerRequest *request){
        request->send(LittleFS, "/wifimanager.html", "text/html");
        });
                
        server.serveStatic("/", LittleFS, "/");
        
        server.on("/", HTTP_POST, [](AsyncWebServerRequest *request) {
          int params = request->params();
          for(int i=0;i<params;i++){
              const AsyncWebParameter* p = request->getParam(i);
              if(p->isPost()){
              // HTTP Post valor de ssid
              if (p->name() == PARAM_INPUT_1) {
                  ssid = p->value().c_str();
                  Serial.print("SSID set to: ");
                  Serial.println(ssid);
                  // Write file to save value
                  writeFile(LittleFS, ssidPath, ssid.c_str());
              }
              // HTTP POST valor de contraseña
              if (p->name() == PARAM_INPUT_2) {
                  pass = p->value().c_str();
                  Serial.print("Password set to: ");
                  Serial.println(pass);
                  // Write file to save value
                  writeFile(LittleFS, passPath, pass.c_str());
              }
              // HTTP POST valor de usuario MQTT
              if (p->name() == PARAM_INPUT_3) {
                  muser = p->value().c_str();
                  Serial.print("MQTT User set to: ");
                  Serial.println(muser);
                  // Write file to save value
                  writeFile(LittleFS, muserPath, muser.c_str());
              }
              // HTTP POST valor de device_id
              if (p->name() == PARAM_INPUT_4) {
                  device_id = p->value().c_str();
                  Serial.print("Device ID set to: ");
                  Serial.println(device_id);
                  // Write file to save value
                  writeFile(LittleFS, device_idPath, device_id.c_str());
              }
              // HTTP POST valor de device_key
              if (p->name() == PARAM_INPUT_5) {
                  device_key = p->value().c_str();
                  Serial.print("Device Credentials set to: ");
                  Serial.println(device_key);
                  // Write file to save value
                  writeFile(LittleFS, device_keyPath, device_key.c_str());
              }
              // HTTP POST ip value
              if (p->name() == PARAM_INPUT_6) {
                  ip = p->value().c_str();
                  Serial.print("IP Address set to: ");
                  Serial.println(ip);
                  // Write file to save value
                  writeFile(LittleFS, ipPath, ip.c_str());
              }
              // HTTP POST gateway value
              if (p->name() == PARAM_INPUT_7) {
                  gateway = p->value().c_str();
                  Serial.print("Gateway set to: ");
                  Serial.println(gateway);
                  // Write file to save value
                  writeFile(LittleFS, gatewayPath, gateway.c_str());
              }
              }
          }
          request->send(200, "text/plain", "Done. ESP will restart, connect to your router and go to IP address: " + ip);
          delay(3000);
          ESP.restart();
        });
        server.begin();
    }
}
void loop(){
    // Código para ejecutar en el loop
    //thing->handle();
}