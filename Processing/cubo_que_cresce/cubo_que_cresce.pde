float x,y,z,rot;

void setup () {
  size (600,600,P3D);
  x = width/2;
  y = height/2;
  z = 0;
  rot = 250;
}

void draw () {
  background (200);
  translate (x,y,z);
  rotateZ (rot);
  rotateY (rot);
  rectMode (CENTER);
  rect (0,0,150,150);
  rot = rot+PI/64;
  z++;
  
}