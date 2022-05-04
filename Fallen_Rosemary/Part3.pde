//1.96-ending
class Part3
{
  float average = 0;
float lerpedA = average;
float[] g = new float[500];

public float thetaX;
public float thetaY;

}

void setup3()
{

  colorMode(HSB);

}

void draw3()
{
 background(0);
 float sum = 0;
   float average = 0;
float lerpedA = average;
float[] g = new float[500];

float thetaX= 1*width;
float thetaY= 1*height;


 
 for(int i = 0; i < g.length; i ++){
   float Color = map(i,0,width,0,255);
  g[i] = lerp(g[i],ab.get(i),0.09);
   stroke(Color,255,255);
  strokeWeight(2);
  line(i,(g[i] * height) ,i,(g[i] * height));
  line(i,height+(g[i] * height/2) ,i,height+(g[i] * height/2));
  sum += abs(ab.get(i));
 }
 for(int i = 0; i < 500; i ++){
     float Color = map(i,0,height,0,255);
        stroke(Color,255,255);
  strokeWeight(2);
   g[i] = lerp(g[i],ab.get(i),0.09);
     line(0-(g[i] * height),i ,0-(g[i] * height/2),i);
    line(width+(g[i] * height*2),i ,width+(g[i] * height/2),i);
 }



 average = sum/ab.size();
 stroke((average)*666,125,200);
 noFill();
lerpedA = lerp(lerpedA,average,0.09);


pushMatrix();
translate(width/2, height/2,0);
 rotateX(thetaX);
 rotateY(thetaY);
 box(lerpedA*40000);
 popMatrix();

thetaX += lerpedA;
thetaY += lerpedA;


}
