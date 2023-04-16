//#define RELE_PIN      4
const int relayPin = D4; // Definir el pin donde está conectado el relé

void setup() {
  Serial.begin(9600);
  pinMode(relayPin, OUTPUT); // Establecer el pin del relé como salida
}

void loop() {
  digitalWrite(relayPin, HIGH); 
  Serial.println("Relé encendido!!");// Encender el relé
  delay(5000);

 digitalWrite(relayPin, LOW);
 Serial.println("Relé Apagado!!");
 delay(5000);
  

}
