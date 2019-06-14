/******************************************************************************

Node-RED Energy Harvesting dashboard example, weather forecast, temperature and humidty measurement. MQTT, ESP32, u-blox NINA-W10, HTU21D, IBM Cloud, CloudMQTT 
Leonardo Bispo
June - 2019
https://github.com/ldab/Node-RED-Energy-Harvesting-dashboard

Distributed as-is; no warranty is given.

This example tries to implement some key functions and key PIN atributes in order
to get you started with using Arduino and the espresif ESP32 board u-blox NINA-W10

******************************************************************************/

#include "Arduino.h"
#include "Wire.h"
#include <Ticker.h>
#include <Adafruit_HTU21DF.h>

#include <WiFi.h>

extern "C" {
	#include "freertos/FreeRTOS.h"
	#include "freertos/timers.h"
}

#include <AsyncMqttClient.h>

#define WIFI_SSID "yourSSID"
#define WIFI_PASSWORD "yourpass"

#define MQTT_HOST IPAddress(192, 168, 1, 10)
#define MQTT_PORT 1883

/******************     NINA-W10 PIN Definition      ************************************
 * .platformio\packages\framework-arduinoespressif32\variants\nina_w10
LED_GREEN = 33;
LED_RED   = 23;
LED_BLUE  = 21;
SW1       = 33;
SW2       = 27;

TX        = 1;
RX        = 3;

SDA       = 12;
SCL       = 13;
***************************************************************************************/

// Initialize the Temperature and Humidity Sensor HTU21D
Adafruit_HTU21DF htu = Adafruit_HTU21DF();

AsyncMqttClient mqttClient;
TimerHandle_t mqttReconnectTimer;
TimerHandle_t wifiReconnectTimer;

// Create timers using Ticker library in oder to avoid delay()
Ticker blinkIt;
Ticker readIt;

// Create functions prior to calling them as .cpp files are differnt from Arduino .ino
void setupBLE   ( void );
void readSensor ( void );
void colorLED   ( void );
void connectWiFi( void );
void connectMQTT( void );
void onMqttPub  (uint16_t packetId);

// Declare Global variables
float t = NAN;
float h = NAN;

void onMqttConnect(bool sessionPresent) {
  Serial.println("Connected to MQTT.");
  Serial.print("Session present: ");
  Serial.println(sessionPresent);
  uint16_t packetIdSub = mqttClient.subscribe("test/lol", 2);
  Serial.print("Subscribing at QoS 2, packetId: ");
  Serial.println(packetIdSub);
  mqttClient.publish("test/lol", 0, true, "test 1");
  Serial.println("Publishing at QoS 0");
  uint16_t packetIdPub1 = mqttClient.publish("test/lol", 1, true, "test 2");
  Serial.print("Publishing at QoS 1, packetId: ");
  Serial.println(packetIdPub1);
  uint16_t packetIdPub2 = mqttClient.publish("test/lol", 2, true, "test 3");
  Serial.print("Publishing at QoS 2, packetId: ");
  Serial.println(packetIdPub2);

  readSensor();
  const char* t_send = String(t,1).c_str();
  mqttClient.publish("temp_office", 1, false, t_send );
  const char* h_send = String(h,1).c_str();
  mqttClient.publish("temp_office", 1, false, h_send );

}

void onMqttPub(uint16_t packetId) {
  Serial.println("Publish acknowledged.");
  Serial.print("  packetId: ");
  Serial.println(packetId);
}

void setup()
{
  // Define pins on the NINA board
  pinMode( LED_RED  , OUTPUT );
  pinMode( LED_GREEN, OUTPUT );
  pinMode( LED_BLUE , OUTPUT );
  digitalWrite( LED_RED  , HIGH );
  digitalWrite( LED_GREEN, HIGH );
  digitalWrite( LED_BLUE , HIGH );

  pinMode( SW2, INPUT_PULLUP );
  attachInterrupt( SW2, colorLED, FALLING );

  mqttReconnectTimer = xTimerCreate("mqttTimer", pdMS_TO_TICKS(2000), pdFALSE, (void*)0, reinterpret_cast<TimerCallbackFunction_t>(connectMQTT));
  mqttClient.onConnect(onMqttConnect);
  mqttClient.onPublish(onMqttPub);
  mqttClient.setServer(MQTT_HOST, MQTT_PORT);

  Serial.begin(115200);

  connectWiFi();
}

void loop()
{

} // end of loop

void readSensor( void )
{
  t = htu.readTemperature();
  h = htu.readHumidity();

  if (! isnan(t)) {  // check if 'is not a number'
    Serial.print("Temp ºC = "); Serial.println(t);
  } else { 
    Serial.println("Failed to read temperature");
  }
  
  if (! isnan(h)) {  // check if 'is not a number'
    Serial.print("Hum. % = "); Serial.println(h);
  } else { 
    Serial.println("Failed to read humidity");
  }
  
  Serial.println();
  
}

// Toggle LED_Blue
void blinky( void )
{
  bool toggle = digitalRead( LED_BLUE );

  digitalWrite( LED_BLUE, !toggle );
}

// Random function just to show Switch 2
void colorLED( void )
{
  uint8_t ran = random(0,3);
  
  switch (ran)
  {
  case 1:
    digitalWrite( LED_RED, LOW );
    break;
  
  case 2:
    digitalWrite( LED_GREEN, LOW );
    break;

  default:
    digitalWrite( LED_GREEN, HIGH );
    digitalWrite( LED_RED, HIGH );
    break;
  }

}

void connectWiFi() {
  Serial.println("Connecting to Wi-Fi...");
  WiFi.begin(WIFI_SSID, WIFI_PASSWORD);
}

void connectMQTT() {
  Serial.println("Connecting to MQTT...");
  mqttClient.connect();
}
