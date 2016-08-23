void setup () {
  size (640,480);
  background (100);
  strokeWeight (10);
  stroke (255);
  fill(255,255,0);
  ellipse (width/2,height/2,400,400);
  fill (0,0,255);
  ellipse (width/2-80,height/2-80,50,70);
  fill (0,0,255);
  ellipse (width/2+80,height/2-80,70,30);
  triangle (width/2-30,height/2+20,width/2+30,height/2+20,width/2,height/2-40);
  rectMode (RADIUS);
  fill (10,10,10);
  rect (width/2, height/2+100, 100, 20);
  rectMode (RADIUS);
  fill (10,10,10);
  rect (width/2-90, height/2-130, 40, 10);
  rectMode (RADIUS);
  fill (10,10,10);
  rect (width/2+90, height/2-130, 40, 10);
}