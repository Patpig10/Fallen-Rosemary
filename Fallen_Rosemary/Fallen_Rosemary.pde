import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;



void setup ()
{
  size(1024,500,P3D);
  colorMode(HSB);

    minim = new Minim(this);
ap = minim.loadFile("Fantasy Note.mp3",1024);
ap.play();
ab = ap.mix;
halfH = height/2;
colorInc= 255/(float)ab.size();
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
  background(0);
  float sum = 0;
  for(int i = 0;i<ab.size();i++)
  {
    stroke(colorInc*i,255,255);
line(i,halfH-lerpedBuffer[i]*sum,i,halfH+lerpedBuffer[i]*halfH);
    sum += abs(ab.get(i));
  lerpedBuffer[i] = lerp(lerpedBuffer[i],ab.get(i),0.1f);
//line(i, halfH-lerpedBuffer[i]*halfH * 4.0f, halfH+lerpedBuffer[i]*halfH * 4.0f, i);
}

float average = sum / (float)ab.size();
  lerpedAverage = lerp(lerpedAverage,average,0.1f);
    fill(colorInc*average,255,255);
  circle(width/2,height/2,average*560);
}
