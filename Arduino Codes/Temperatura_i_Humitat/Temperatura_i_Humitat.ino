#include <DHT.h>
#include <ESP8266WiFi.h>
#include <ESP8266HTTPClient.h>

#define DHTPIN D6     // PIN DADES
#define DHTTYPE DHT11 // PIN SENSOR TEMP/HUMIT


DHT dht(DHTPIN, DHTTYPE);

void setup() {
  Serial.begin(9600);
  dht.begin();
}

void loop() {
  float temperature = dht.readTemperature();
  float humidity = dht.readHumidity();

  Serial.print("Temperature: ");
  Serial.print(temperature);
  Serial.print(" *C");
  Serial.print(" | Humidity: ");
  Serial.print(humidity);
  Serial.println(" %");

  delay(2000); // RETRÀS DE 2 SEG EN CADA LOOP
}