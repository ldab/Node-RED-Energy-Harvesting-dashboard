# Node-RED-Energy-Harvesting-dashboard

Node-RED Energy Harvesting dashboard example, weather forecast, temperature and humidty measurement. MQTT, ESP32, u-blox NINA-W10, HTU21D, IBM Cloud, CloudMQTT

[![GitHub version](https://img.shields.io/github/release/ldab/Node-RED-Energy-Harvesting-dashboard.svg)](https://github.com/ldab/Node-RED-Energy-Harvesting-dashboard/releases/latest)
[![Build Status](https://travis-ci.org/ldab/Node-RED-Energy-Harvesting-dashboard.svg?branch=master)](https://travis-ci.org/ldab/Node-RED-Energy-Harvesting-dashboard)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://github.com/ldab/Node-RED-Energy-Harvesting-dashboard/blob/master/LICENSE)

[![GitHub last commit](https://img.shields.io/github/last-commit/ldab/Node-RED-Energy-Harvesting-dashboard.svg?style=social)](https://github.com/ldab/Node-RED-Energy-Harvesting-dashboard)

[![dashboard](./pics/dashboard.png)](https://www.u-blox.com/en/product/nina-W10-series)

## How to build PlatformIO based project

1. [Install PlatformIO Core](http://docs.platformio.org/page/core.html)
2. Download [development the repository with examples](https://github.com/ldab/Node-RED-Energy-Harvesting-dashboard)
3. Extract ZIP archive
4. Run these commands:

```
# Change directory to example
> cd Node-RED-Energy-Harvesting-dashboard

# Build project
> platformio run

# Upload firmware
> platformio run --target upload

# Build specific environment
> platformio run -e nina_W10

# Upload firmware for the specific environment
> platformio run -e nina_W10 --target upload

# Clean build files
> platformio run --target clean
```

## TODO

- [ ] TODO; XD

## Why?

An example code on IoT, solar PV energy harsting example running on ESP32 u-blox NINA-W10, MQTT on Node-RED hosted on IBM cloud.

## MQTT Broker

The MQTT Broker used is [CloudMQTT](https://www.cloudmqtt.com/) they offer Free accounts ;)

## IBM Node-RED Hosting

The process was a bit tedious and took a while to get it properly running as of today (2019/06/15) the information provided on the tutorial had few broken links.

[https://nodered.org/docs/platforms/bluemix](https://nodered.org/docs/platforms/bluemix)

## Node-RED Flow

You will find the flow.json [here](./Node-RED flow/flows.json).

![Node-RED Flow](./pics/screenshot.png)

## OpenWeatherMap API

* In order to get the weather forecast information for the OpenWeatherMap node, you will need to get your API at [https://openweathermap.org/api](https://openweathermap.org/api)
* Then define your location and the information you would like to show on the "Forecast String" node:
```
{
  "coord":{"lon":139,"lat":35},
  "sys":{"country":"JP","sunrise":1369769524,"sunset":1369821049},
  "weather":[{"id":804,"main":"clouds","description":"overcast clouds","icon":"04n"}],
  "main":{"temp":289.5,"humidity":89,"pressure":1013,"temp_min":287.04,"temp_max":292.04},
  "wind":{"speed":7.31,"deg":187.002},
  "rain":{"3h":0},
  "clouds":{"all":92},
  "dt":1369824698,
  "id":1851632,
  "name":"Shuzenji",
  "cod":200
}
```

## Partition Table and Flash size

* You can create a custom partitions table (CSV) following [ESP32 Partition Tables](https://docs.espressif.com/projects/esp-idf/en/latest/api-guides/partition-tables.html) documentation.

* Partitions examples are available at [GitHub arduino-esp32](https://github.com/espressif/arduino-esp32/tree/master/tools/partitions)

* `minimal.csv` is the default defined on [nina_w10.json](https://github.com/platformio/platform-espressif32/blob/master/boards/nina_w10.json) however I changed it in order to free some space up used by spiffs found on `partitions_custom.csv` [here](./partitions_custom.csv)
  * No OTA;
  * No SPIFFS;
  * No EEPROM;

## Erase Flash

`pio run -t erase` - > all data will be replaced with 0xFF bytes.

## Credits

Github Shields and Badges created with [Shields.io](https://github.com/badges/shields/)
