#include <ESP8266WiFi.h>
#include <WiFiClient.h>
#include <DHT.h>

const char* ssid = "SMX2A";
const char* password = "CiclesSmx2A";
const char* server = "10.95.254.152";
const int httpPort = 80;

#define DHTPIN D2 // Replace with the pin connected to the DHT11 sensor
#define DHTTYPE DHT11
DHT dht(DHTPIN, DHTTYPE);

void setup() {
  Serial.begin(9600);
  delay(1000);

  WiFi.begin(ssid, password);
  Serial.println("Connecting to WiFi...");
  while (WiFi.status() != WL_CONNECTED) {
    delay(1000);
    Serial.println("Connecting...");
  }

  Serial.println("WiFi connected!");
  dht.begin();
}

void loop() {
  float temperature = dht.readTemperature();
  float humidity = dht.readHumidity();
  if (isnan(temperature) || isnan(humidity)) {
    Serial.println("Failed to read data from DHT11 sensor!");
    delay(2000);
    return;
  }
  Serial.print("Temperature: ");
  Serial.print(temperature);
  Serial.print(" °C, Humidity: ");
  Serial.print(humidity);
  Serial.println(" %");

  WiFiClient client;
  if (client.connect(server, httpPort)) {
    Serial.println("connected");
    client.print("GET /afegirdades.php?EnvTemperatura=" + String(temperature) + "&EnvHumitat=" + String(humidity));
    client.println(" HTTP/1.1");
    client.println("Host: 10.95.254.152");
    client.println("Connection: close");
    client.println();

    Serial.println("Sending request...");

    Serial.println("Waiting for response...");
    while (client.connected()) {
      String line = client.readStringUntil('\n');
      Serial.println(line);
    }

    client.stop();
    Serial.println("Request complete!");
  } else {
    Serial.println("Failed to connect to server");
  }

  delay(5000); // Wait 5 seconds before sending the next request
}