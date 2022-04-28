import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

void setup()
{
  size(1024,500,P3D);
  colorMode(HSB);
  
  minim = new Minim(this);
  ap = minim.loadFile("Fantasy Note.mp3",1024);
  ap.play();
  ab = ap.mix;
  halfH = height/2;
  colorInc = 255/(float)ab.size();
 
}

Minim minim;
AudioPlayer ap;
AudioInput ai;
AudioBuffer ab;
float halfH;
float colorInc;
float lerpedAverage = 0;

float[] lerpedBuffer = new float[1024];


void draw()
{
  background(0);
  float sum = 0;
  for(int i =5; i<ab.size();i++)
  {
    noStroke();
    //stroke(colorInc * i, 255, 255);
    //line(i,halfH-lerpedBuffer[i]*halfH* 1.0f, halfH+lerpedBuffer[i]*halfH *1.0f , i);
    circle(i,halfH+lerpedBuffer[i]*halfH,halfH/1.8f+lerpedBuffer[i]*halfH);
    fill(colorInc * i, 255, 255);
    sum += abs(ab.get(i));
    lerpedBuffer[i] = lerp(lerpedBuffer[i], ab.get(i),0.1f);
    
  }
   float average = sum/ (float) ab.size();
   lerpedAverage = lerp(lerpedAverage, average, 0.1f);
   //circle(width/2, 100, average * 200);
  
}
