import processing.pdf.*;
import colorblind.ColorBlindness;
PImage img ;
ColorBlindness colorBlindness ;
void setup() {
  size (722,560) ;
  // this is how the library 'attaches' to your sketch:
  colorBlindness = new ColorBlindness(this);
}

void draw() {
  img = loadImage("d.jpg") ;
  image(img, 0, 0);
}


void keyPressed() {
  switch(key) {
  case 'a':
    colorBlindness.simulateProtanopia();//P型（Protanopia）プロタノピア　
    break ;
  case 's':
    colorBlindness.simulateDeuteranopia();//D型（Deuteranopia）ディータライピア
    break ;
    case 'd':
    colorBlindness.simulateTritanopia();//T型（Tritanopia）トリタノピア
    break ;
  case 'f':
    colorBlindness.simulateAchromatopsia();//A型（Acromatic：無色型）
    break ;
  case 'g':
    colorBlindness.simulateBlueConeMonochromacy();
    break ;
  case 'h':
    colorBlindness.daltonizeProtanopia();
    break ;
  case 'j':
    colorBlindness.daltonizeDeuteranopia();
    break ;
  case 'k':
    colorBlindness.daltonizeTritanopia();
    break ;
    case 'l':
    colorBlindness.daltonizeAchromatopsia();
    break ;
  case ';':
    colorBlindness.daltonizeBlueConeMonochromacy();
    break ;
  }
}
