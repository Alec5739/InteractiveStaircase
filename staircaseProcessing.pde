import processing.serial.*;

Serial arduinoPort;
int val;

void setup(){
String portName = Serial.list()[0];
arduinoPort = new Serial(this, portName, 9600);
}


void draw(){
  if( arduinoPort.available() > 0 )
  {
    val= arduinoPort.read();
  }
}