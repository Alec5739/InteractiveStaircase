import netP5.*;
import oscP5.*;

OscP5 oscP5;
NetAddress oscLocation;

final int oscPortOut = 7000;
final int oscPortIn = 7001;




void setup(){
  oscP5 = new OscP5(this, oscPortIn);
  oscLocation = new NetAddress("localhost", oscPortOut);
}



void draw(){
  
}

 void mousePressed() {
 
OscMessage msg = new OscMessage("/");
msg.setAddrPattern("/layer3/bypassed");
msg.add(1);

oscP5.send(msg, oscLocation);
println(oscLocation);
println(msg);
}

 void mouseReleased() {

OscMessage msg = new OscMessage("/");
msg.setAddrPattern("/layer3/bypassed");
msg.add(0);

oscP5.send(msg, oscLocation);
println(oscLocation);
println(msg);
}


void oscEvent(OscMessage theOscMessage) {
  /* print the address pattern and the typetag of the received OscMessage */
  // THIS FUNCTION SHOULD BE USED TO CONFIRM THE MESSAGES YOU'RE SENDING!
  
  print("### received an osc message.");
  print(" addrpattern: "+theOscMessage.addrPattern());
  println(" typetag: "+theOscMessage.typetag());
}