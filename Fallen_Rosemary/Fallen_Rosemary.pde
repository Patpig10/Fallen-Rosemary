import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Testlii b;
Part1 a;
Snow s;
Part3 d;
int phase = 0;
long startTime = 0;
int duration = 3000;
PImage img;
PImage img1;
void setup ()
{
 startTime = millis();
minim = new Minim(this);
  b = new Testlii();
   d = new Part3();
  //fullScreen();
 size(1024,500,P3D);
  colorMode(HSB);
img = loadImage("Free2.jpeg");
img1 = loadImage("Fallen1.jpeg");
    minim = new Minim(this);
ap = minim.loadFile("Fantasy Note.mp3",1024);
ap.play();
ab = ap.mix;
halfH = height/2;
//colorInc= 255/(float)ab.size();
fill(4);

}
 Minim minim;
  AudioPlayer ap;
  AudioInput ai;
  AudioBuffer ab;
  float[] lerpedBuffer = new float[1024];
  float halfH;
  float colorInc;
  
float lerpedAverage = 0;
void draw()
{
    image(img, 0, 0); 
//background(200);
if (phase == 0) {
//text("phase 0", 100, 100);
if (millis() - startTime > duration) {
  setup1();
  Part1draw();
  startTime = millis();
phase = 1;
}
}
if(phase == 1){
//text("phase 1", 100, 100);
setup1();
  Part1draw();
if (millis() - startTime > duration*15.6) {

phase = 2 ;
}
}

  if(phase == 2){
text("phase 2", 100, 100);
Snowsetup(); 
Snowdraw();
if (millis() - startTime > duration*17) {

phase = 3;
}
}
  
if(phase == 3){
//text("phase 3", 100, 100);
setup2(); 
display();
if (millis() - startTime > duration*24.9) {

phase = 4;
}
}
  
if(phase == 4){
//text("phase 3", 100, 100);
setup3();
draw3();
if (millis() - startTime > duration*24.9) {

//phase = 4;
}
}
  
  
}

  


  
  
  
