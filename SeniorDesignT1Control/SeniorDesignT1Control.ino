//Set I/O
const int INPUT_PIN = A1;
//set pins to variable note: cannnot be const since they will be changed 
//int OUTPUT_RELAY = D2;


void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200);
  delay(1000);
  pinMode(INPUT_PIN,INPUT);
  //pinMode(OUTPUT_RELAY,OUTPUT);
  //Resolution specific to arduino
  analogReadResolution(12);
}

void loop() {
  // put your main code here, to run repeatedly:
  //digitalWrite(OUTPUT_RELAY, HIGH);
  int sensorReading = analogRead(INPUT_PIN);
  double voltageTherm = (sensorReading/4095.0) * 3.3;
  double Rs = 10000; 
  double currentBias = (voltageTherm - 3.3) / -Rs; // currentBias is in A; 
  double resistance = (voltageTherm / currentBias); // resistance is in ohms
  double var_temp = log(resistance/11000) + (3977/298.0);
  double temperature = 3977 / var_temp; // finds T in kelvin
  double tempC = temperature - 273.0; //converts T to celsius
  String p1 = ";";
  Serial.print(voltageTherm+p1+tempC);
  Serial.print('\n');
  delay(10); //change to desired sampling rate 
  if (tempC >= 33)// change to desired temperature 
  {
    Serial.print("Temp too high!")
    //digitalWrite(OUTPUT_RELAY, LOW);
    delay(500); //Change to desired timer(ms) 
    }
}
