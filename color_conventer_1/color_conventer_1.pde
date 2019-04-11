// luminance = ( 0.298912 * r + 0.586611 * g + 0.114478 * b );
//C型（Common：一般型）
//P型（Protanopia）プロタノピア
//D型（Deuteranopia）ディータライピア
//T型（Tritanopia）トリタノピア
//A型（Acromatic：無色型）

float r, g, b ;
int w = 50 ;
int h = 50 ;

void setup() {
  size(400, 600) ;
  noStroke() ;
  for (int x=0; x<width/w; x++) {
    r = random(255) ;
    g = random(255) ;
    b = random(255) ;
    fill(r, g, b) ;
    rect(x*w, 0, w, height/5);

    float l = ( 0.198912 * r + 0.646611 * g + 0.204478 * b );
    float m = 1.5;   // r/g
    float g2 = l / (0.298912 * m + 0.586611) ;
    float r2 = g2 * m ;
    fill(r2, g2, b) ;
    rect(x*w, height/5*1, w, height/5*1);

    float l2 = ( 0.198912 * r + 0.586611 * g + 0.114478 * b );
    float m2 = 1.7 ;   // r/g
    float g3 = l2 / (0.298912 * m2 + 0.586611) ;
    float r3 = g3 * m2 ;
    fill(r3, g3, b) ;
     rect(x*w, height/5*2, w, height/5*2);

    float  l3=  ( 0.298912 * r + 0.586611 * g  +0.004478*b);
    float m3 = 1.0 ;   // r/g
    //float b4=  l3/( 0.298912 * m3 +  0.586611 );
    // float b4 = l3/(0.586611*m3  +0.004478*b);
    float g4 =(l3/ 0.298912 * m3 +  0.586611);
   //float r4 = l3/( 0.298912 * m3+ 0.114478 );
    fill(r,g4, 0) ;
    rect(x*w, height/5*3, w, height/5*3);



    float s = max (r, g, b) / 1.5;
    fill(s);
    
    rect(x*w, height/5*4, w, height/5*4);
  }
}
