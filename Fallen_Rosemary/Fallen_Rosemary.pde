import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioInput ai;
AudioBuffer ab;
AudioPlayer ap;

 minim = new Minim(this);
  ap = minim.loadFile(" ", 1024);
  ap.play();
  ap.loop();
  ab = ap.mix;
