float camRot, camX, camY, camZ, camDist;
float spX, spY, spZ;
float sppX, sppY, sppZ;
float rot;

void setup () {
  //fullScreen (P3D);
  size (800,600, P3D);
  camDist = 2*width;
  spX = width/2;
  spY = height/2;
  spZ = -width/2;
  sppX = width/2;
  sppY = height/2;
  sppZ = -width/2;
  rot = 0;
}

void draw () {
  if (mousePressed) {
    directionalLight (120, 255, 120, 0, -1, 0);
    directionalLight (120, 120, 255, 0, 1, -0);
    pointLight (255, 0, 0, width/2, height/2, width/2);
  } else {
    lights ();
  }
  
  camY = -height+2*mouseY;
  camX = cos(radians(180+map(mouseX, 0, width, 0, 360)))*camDist;
  camZ = sin(radians(180+map(mouseX, 0, width, 0, 360)))*camDist;
  camera (camX+width/2, camY+height/2, camZ, width/2, height/2, 0, 0, 1, 0);
  
  //Box
  background (0);
  pushMatrix();
    noFill();
    stroke(100);
    translate (width/2, height/2, 0);
   // box (width);
    popMatrix();
    
    //Esfera
   // pushMatrix ();
    //noStroke ();
    noFill ();
    translate (spX, spY, spZ);
    sphere (width);
   // popMatrix ();
    
    //Esfera2
    //pushMatrix ();
    //stroke (255);
    fill (255);
    translate (sppX, sppY, sppZ);
    rotateZ (rot);
    rotateY (rot);
    rot = rot+PI/256;
    sppZ++;
    sphere (width/10);
    //popMatrix ();
    
    spX = spX+0.5;
    //spY = spY+0.5;
    spZ = spZ+0.5;
     //sppX = spX+0.5;
    ////sppY = spY+0.5;
    //sppZ = spZ+0.25;
}