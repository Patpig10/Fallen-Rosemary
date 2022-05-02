class Snow{
  
  int numSnow = 500;// this is the number of snow drops (for asteroids I changed it to 15)
float[] sx = new float[numSnow];
float[] sy = new float[numSnow];
float[] sspeed = new float[numSnow];
float[] sSize = new float[numSnow];
}
void Snowsetup()
{

  
  for(int i = 0 ; i < numSnow ; i ++) //I recommend changing the word "numSnow" to something else
  {
    sx[i] = random(0, width);
    sy[i] = random(0, height);
    sspeed[i] = random(2, 10); // this changes how quick they go across the screen
    sSize[i] = random(2, 10); // this will change the size of the spheres
  }
}

int numSnow = 500;// this is the number of snow drops (for asteroids I changed it to 15)
float[] sx = new float[numSnow];
float[] sy = new float[numSnow];
float[] sspeed = new float[numSnow];
float[] sSize = new float[numSnow];

void Snowdraw()
{
  background(0);
  noStroke();
  fill(255);
  for(int i = 0 ; i < numSnow ; i ++)
  {
    ellipse(sx[i], sy[i], sSize[i], sSize[i]); // this is actually the spawning of the snow
    sy[i] += sspeed[i];
   sx[i] += random(-5, 5); // This line isn't needed because it causes the spheres to shake
    if (sy[i] > height) // this basically says "after it reaches this height (Y 500), make a new sphere here"
    {
      sx[i] = random(0, width);
      sy[i] = 0;
      sspeed[i] = random(2, 10);
      sSize[i] = random(2, 10);
    }
    
  }
}
