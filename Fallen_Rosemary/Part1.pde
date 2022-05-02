class Part1
{
  float[] lerpedBuffer = new float[1024];
  float halfH;
  float colorInc;
  
float lerpedAverage = 0;
  
}
void setup1()
{
    colorMode(HSB);
  halfH = height/2;
    colorInc = 255/(float)ab.size(); 

}


void Part1draw()
{
   float sum = 0;
  for(int i = 0;i<ab.size();i++)
  {
    stroke(155,255,255);
line(i,halfH-lerpedBuffer[i]*sum,i,halfH+lerpedBuffer[i]*halfH);
    sum += abs(ab.get(i));
  lerpedBuffer[i] = lerp(lerpedBuffer[i],ab.get(i),0.1f);
//line(i, halfH-lerpedBuffer[i]*halfH * 4.0f, halfH+lerpedBuffer[i]*halfH * 4.0f, i);
    fill(colorInc * i, 255, 255);
}

float average = sum / (float)ab.size();
  lerpedAverage = lerp(lerpedAverage,average,0.1f);
  //  fill(155*average,255,255);
 // circle(width/2,height/2,average*560);
}

  
  
  
