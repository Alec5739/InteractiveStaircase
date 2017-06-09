import processing.serial.*;

Serial myPort;
String val;
int value; //Data received from Serial Port
int lf = 10; //Linefeed ASCII = 10


void setup(){
String portName = Serial.list()[0]; //printArray(Serial.list())  to list all available serial ports
myPort = new Serial(this, portName, 9600);

myPort.bufferUntil(lf); //acts as delimiter, buffers data to read more efficiently
}


void draw(){
  //while( myPort.available() > 0 )
  //{
  //   val= myPort.readString();
  // // try{
   
  //  //println(val);
  // //value = Integer.parseInt(val.trim());
  // //value = int(val);
  // //println(val);
  //  println(val);
  //  //} catch (NumberFormatException npe) { }
  //  //println(value);
  //}
}

void serialEvent (Serial myPort)
{
 val = myPort.readString();
 if (val != null){
   val = trim(val); //tosses extra irrelevant numbers from Serial
   value = int(val); //make string to integer
   println(value);
   if (value >= 500){
     println("Hello");
   }
 }
}