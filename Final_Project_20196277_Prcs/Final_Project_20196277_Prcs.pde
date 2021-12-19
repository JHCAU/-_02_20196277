import processing.serial.*;

Serial myPort;
String val;
String level;
Boolean IsWet = false;


void setup(){
  myPort = new Serial(this, "COM5",9600);
  size(780,540);
  background(0);
  ellipseMode(RADIUS);
  fill(0);
}

void draw(){
  DrawObject();
}

void serialEvent(Serial port){
 val = port.readStringUntil('\n');  
 if (val != null){
   String[] list = split(val, '.');
   
   level = list[0];
//   IsWet = boolean(list[1]);
   print("IsFlowerBloom:");
   
   
   if(level.equals("Bloom")){
     
     IsWet = true;
     println(IsWet);
   }
   if(level.equals("Fall")){
     IsWet = false;
     println(IsWet);
   }
 }
}

void DrawObject(){
  if(IsWet){
    //fill(random(255));
    new flower(width/2,height, 170,30,0,5);
  }
  else{

    fill(0,10);
    rect(0,0,780,540);
  }
}
