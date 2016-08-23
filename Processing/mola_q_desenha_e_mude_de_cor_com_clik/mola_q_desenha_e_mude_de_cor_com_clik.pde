//int raio;
int espessura;
int red = 0;
int redinc;
int green = 255;
int greeninc = 5;
int blue = 1;
int blueinc = -5;

void setup() {
  fullScreen ();
  //raio = 0;
  noFill();
  background(0);
  strokeWeight(1);
}

void draw() {
  //background(0);
  stroke(0,green,blue);
  
  if (mousePressed) {
    //raio = 30;
    green = green+greeninc;
    blue = blue+blueinc;
  } else {
    //raio = 0;
  }
    if (blue >= 255 || blue <= 0)
    {blueinc = -blueinc;
    greeninc = -greeninc;
    }
   // for () {
   // ellipse (mouseX, mouseY, 50, 50);
    //}
    
  ellipse (mouseX, mouseY, 50, 50);
  
  delay(1);
 }