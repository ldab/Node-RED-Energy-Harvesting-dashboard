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

#include "esp_wifi.h"
#include <driver/adc.h>
#include <esp_adc_cal.h>

extern "C" {
	#include "freertos/FreeRTOS.h"
	#include "freertos/timers.h"
}

#include <AsyncMqttClient.h>

// Enable Debug interface and serial prints over UART1
#define DEGUB_NINA

//#define WIFI_SSID     "Olive pa Stranden"
//#define WIFI_PASSWORD "Lickingp4w"
#define WIFI_SSID     "MoreEGuest"
#define WIFI_PASSWORD "18electronics"
#define MQTT_HOST     "m24.cloudmqtt.com"
#define MQTT_PORT     17603
#define USERNAME      "qvpgdxqg"
#define PASSWORD      "YVTESIVDgHlN"

// Connection timeout, if too high capacitor may discharge before connecting Bt(seconds) = [C(Vcapmax - Vcapmin)/I]
#define CON_TIMEOUT   30*1000                     // milliseconds

// Not using Deep Sleep on PCB because TPL5110 timer takes over.
#define TIME_TO_SLEEP 0.5*60*1000*1000            // microseconds

/******************     EVK-NINA-W10 PIN Definition      ************************************
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

// Re-assign pins for PCB.

#define _SDA          22
#define _SCL          21
#define RGB_R         33
#define RGB_G         25
#define RGB_B         26
#define DONE          32
#define BATT          36                        //ADC1 CHANNEL 0 *ADC2 chanel can't be used in conjunction with Wi-Fi https://docs.espressif.com/projects/esp-idf/en/latest/api-reference/peripherals/adc.html

#ifdef DEGUB_NINA
  #define DBG_NINA(x) Serial.println(x)
#else 
  #define DBG_NINA(...)
#endif

// Initialize the Temperature and Humidity Sensor HTU21D
Adafruit_HTU21DF htu = Adafruit_HTU21DF();

AsyncMqttClient mqttClient;
TimerHandle_t   mqttReconnectTimer;
TimerHandle_t   wifiReconnectTimer;

// Create timers using Ticker library
Ticker blinkIt;

// Create functions prior to calling them as .cpp files are differnt from Arduino .ino
void blinky     ( void );
void readSensor ( void );
void connectWiFi( void );
void connectMQTT( void );
void deep_sleep ( void );

// Declare Global variables
float t = NAN;
float h = NAN;

uint8_t statusLED = LED_BLUE;

void RGB_off( void )
{
  digitalWrite( LED_RED  , HIGH );
  digitalWrite( LED_GREEN, HIGH );
  digitalWrite( LED_BLUE , HIGH );
}

void onMqttConnect(bool sessionPresent)
{
  // Get temperature and humidity;
  readSensor();

  // Publish Temperature
  String t_string = String( t,1 );
  const char* t_send = t_string.c_str();
  uint16_t packetIdPubTemp = mqttClient.publish( "temp_office", 0, false, t_send );

  // No delay result in no message sent.
  delay(200);

  // Publish Humidity
  String h_string = String(h,1);
  const char* h_send = h_string.c_str();
  uint16_t packetIdPubHum = mqttClient.publish( "hum_office", 0, false, h_send );

  // No delay result in no message sent.
  delay(200);

  adc1_config_width( ADC_WIDTH_BIT_11 );                          // Reduce ADC resolution due to reported noise on 12 bits
  adc1_config_channel_atten( ADC1_CHANNEL_0, ADC_ATTEN_DB_6 );    // - 6dB attenuation (ADC_ATTEN_DB_6) gives full-scale voltage 2.2V

  esp_adc_cal_characteristics_t *adc_chars = new esp_adc_cal_characteristics_t;
  esp_adc_cal_characterize(ADC_UNIT_1, ADC_ATTEN_DB_6, ADC_WIDTH_BIT_11, 1105, adc_chars);  // rout vRef in order to calibrate: 

  uint32_t batt = adc1_get_raw( ADC1_CHANNEL_0 );
  batt          = esp_adc_cal_raw_to_voltage(batt, adc_chars);

  // Publish Battery
  float b  = batt * 2 / 1000.0f;
  String b_string = String( b, 2 );
  DBG_NINA( "Battery = " + b_string + "V");
  const char* b_send = b_string.c_str();
  uint16_t packetIdPubBatt = mqttClient.publish( "batt_office", 0, false, b_send );

  // No delay result in no message sent.
  delay(200);

  if( !packetIdPubTemp || !packetIdPubHum || !packetIdPubBatt )
  {
    DBG_NINA( "Sending Failed!" );
  }

  // Send DONE to TPL5110 and go to sleep
  pinMode( DONE, OUTPUT );
  digitalWrite( DONE, HIGH );

  // Keep deep sleep as sanity check in case it fails to detect DONE.
  delay( 100 );
  deep_sleep();

}

void deep_sleep()
{
  DBG_NINA( "Going to sleep after: " + String( millis() ) + "ms" );

  // Turn Wifi/BLE off  
  WiFi.mode(WIFI_OFF);
  btStop();
  esp_wifi_deinit();

  // Enable timer wake up
  esp_sleep_enable_timer_wakeup( TIME_TO_SLEEP );
  esp_deep_sleep_start();
}

void setup()
{
  // Define pins on the NINA board
  pinMode( LED_RED  , OUTPUT );
  pinMode( LED_GREEN, OUTPUT );
  pinMode( LED_BLUE , OUTPUT );
  RGB_off();

  blinkIt.attach_ms( 200, blinky );

  mqttReconnectTimer = xTimerCreate("mqttTimer", pdMS_TO_TICKS(2000), pdFALSE, (void*)0, reinterpret_cast<TimerCallbackFunction_t>(connectMQTT));
  mqttClient.setCredentials( USERNAME, PASSWORD );
  mqttClient.onConnect (onMqttConnect );
  mqttClient.setServer( MQTT_HOST, MQTT_PORT );

  #ifdef DEGUB_NINA
    Serial.begin(115200);
  #endif

  // SDA and SCL PINS on NINA are different from NODEMCU ESP32, the lib does not allow re-assignement, do it here:
  //Wire.begin( _SDA, _SCL );

  if ( !htu.begin() )
  {
    DBG_NINA("Couldn't find sensor!");
    while (1);
  }

  connectWiFi();
  connectMQTT();

}

void loop()
{

} // end of loop

void readSensor( void )
{
  t = htu.readTemperature();
  h = htu.readHumidity();

  if (! isnan(t)) {  // check if 'is not a number'
    Serial.print("Temp ºC = "); DBG_NINA(t);
  } else { 
    DBG_NINA("Failed to read temperature");
  }
  
  if (! isnan(h)) {  // check if 'is not a number'
    Serial.print("Hum. % = "); DBG_NINA(h);
  } else { 
    DBG_NINA("Failed to read humidity");
  }
  
}

// Toggle LED_Blue
void blinky( void )
{
  bool toggle = digitalRead( statusLED );

  digitalWrite( statusLED, !toggle );
}

void connectWiFi() {
  DBG_NINA("Connecting to Wi-Fi...");
  WiFi.begin(WIFI_SSID, WIFI_PASSWORD);

  while (WiFi.status() != WL_CONNECTED && millis() < CON_TIMEOUT)
  {
    delay(500);
    Serial.print(".");
  }

  if( WiFi.status() != WL_CONNECTED )
  {
    RGB_off();
    statusLED = LED_RED;
    deep_sleep();
  }

  RGB_off();
  statusLED = LED_GREEN;

  blinkIt.attach_ms( 50, blinky );

  DBG_NINA();
  DBG_NINA("IP address: ");
  DBG_NINA(WiFi.localIP());

}

void connectMQTT() {
  DBG_NINA("Connecting to MQTT...");
  mqttClient.connect();
}
