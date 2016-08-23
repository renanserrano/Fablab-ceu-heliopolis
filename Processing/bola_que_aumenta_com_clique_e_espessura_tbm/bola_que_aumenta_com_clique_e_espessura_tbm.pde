
int raio;
int espessura;

void setup() {
  raio = 0;
  size(640,480);
  noFill();
  background(0);
  stroke(255);
  strokeWeight(10);
}

void draw() {
  if (mousePressed && raio < 700) {
    raio++;
    strokeWeight(espessura++);
  } else {
    raio = 0;
    background(0);
  }
  background(50);
  ellipse (mouseX, mouseY, raio, raio);
  
  delay(5);
 }