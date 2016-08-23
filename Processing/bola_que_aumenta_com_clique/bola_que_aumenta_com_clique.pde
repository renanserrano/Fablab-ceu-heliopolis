
int raio;
float esp;

void setup() {
  raio = 0;
  esp = 10;
  size(640,480);
  noFill();
  background(0);
  stroke(255);

}

void draw() {
  if (mousePressed && raio < 360) {
    raio++;
    esp = esp+0.5;
  } else {
    raio = 0;
    esp = 0;
    background(0);
  }
  strokeWeight (esp);
  background(50);
  ellipse (mouseX, mouseY, raio, raio);
  
  delay(5);
 }