void setup(){
  fullScreen ();
  background(100);
}

void draw() {
  fill (0,0,255);
  triangle(mouseX+10, mouseY-10, mouseX-40, mouseY-10, mouseX-30, mouseY+30);
}

void mousePressed(){
  background(100);
}

void keyPressed(){
  save("capturaTela.jpg");
}