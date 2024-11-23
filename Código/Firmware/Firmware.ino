#define THINGER_SERIAL_DEBUG
#include <Arduino.h>
#include <WiFi.h>
#include <ESPAsyncWebServer.h>
#include <AsyncTCP.h>
#include "LittleFS.h"
#include <ThingerESP32.h>

// Crear un servidor web en el puerto 80
AsyncWebServer server(80);

// Rutas de archivos para LittleFS
#define SSID_PATH "/ssid.txt"
#define PASS_PATH "/pass.txt"
#define MUSER_PATH "/muser.txt"
#define DEVICE_ID_PATH "/device_id.txt"
#define DEVICE_KEY_PATH "/device_key.txt"

// Variables globales
String ssid;
String pass;
String muser;
String device_id;
String device_key;
ThingerESP32 *thing = nullptr;

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

void setup() {
  Serial.begin(115200);
  
  pinMode(2, OUTPUT);
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
    // Configurar Thinger.io
    thing = new ThingerESP32(muser.c_str(), device_id.c_str(), device_key.c_str());
    (*thing)["led"] << digitalPin(2); 
    (*thing)["millis"] >> outputValue(millis());
    Serial.println("Conexión a Thinger.io configurada.");
  }
}

void loop() {
  if (thing != nullptr) {
    thing->handle();
  }
}