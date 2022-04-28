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
