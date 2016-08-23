void setup(){
  size (640,480);
  background(100);
}

void draw() {
  strokeWeight (20);
  stroke(150);
  line (mouseX, mouseY, pmouseX, pmouseY);
}