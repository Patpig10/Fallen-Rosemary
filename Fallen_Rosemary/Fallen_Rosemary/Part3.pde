//1.96-ending
  
   //Drawing
   noStroke();
   circle(i,halfH+lerpedBuffer[i]*halfH,halfH/1.8f+lerpedBuffer[i]*halfH);
   fill(colorInc * i, 255, 255);
   sum += abs(ab.get(i));
   lerpedBuffer[i] = lerp(lerpedBuffer[i], ab.get(i),0.1f);
    
   //Within Drawing but not included with drawing above.
   float average = sum/ (float) ab.size();
   lerpedAverage = lerp(lerpedAverage, average, 0.1f);
//I have no idea how to make it so drawings are displayed after a certain
//amount of time passes so if you're reading this and you're in class ask brian
//how we do that.
