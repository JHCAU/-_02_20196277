#define LED 7

boolean IsWet = false;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(LED, OUTPUT);

}

void loop() {
  // put your main code here, to run repeatedly:

  int val = map(analogRead(A0),0,1023,0,255);

  if (val > 100) {
    IsWet = true;
    Serial.print("Bloom");
    Serial.print(".");
    Serial.println(IsWet);
    digitalWrite(LED,HIGH);
  }
  else{
    IsWet = false;
    Serial.print("Fall");
    Serial.print(".");
    Serial.println(IsWet);
    digitalWrite(LED, LOW);
    }
  delay(100);
}
