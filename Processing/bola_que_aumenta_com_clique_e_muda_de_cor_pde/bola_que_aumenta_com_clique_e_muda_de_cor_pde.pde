int raio;
int espessura;
int red = 0;
int redinc;
int green = 255;
int greeninc = 5;
int blue = 1;
int blueinc = -5;

void setup() {
  size(640,480);
  raio = 0;
  noFill();
  background(0);
  strokeWeight(1);
}

void draw() {
  //background(0);
  stroke(0,green,blue);
  
  if (mousePressed && raio < 640) {
    raio++;
    green = green+greeninc;
    blue = blue+blueinc;
  } else {
    raio = 0;
  }
    if (blue >= 255 || blue <= 0)
    {blueinc = -blueinc;
    greeninc = -greeninc;
    }
    for (int i = 0; i < raio; i = i+15) {
    ellipse (mouseX, mouseY, i, i);
    }
    
  ellipse (mouseX, mouseY, raio, raio);
  
  delay(1);
 }