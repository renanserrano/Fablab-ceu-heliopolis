float x = 150;
float y = 150;
float speedX = random(3,5);
float speedY = random (3,5);
float diam = 20;
int esp = 10;
float rectSize = 150;

void setup() {
  size(500,500);
  //fullScreen();
  noStroke();
  fill(255);
  rectMode(CENTER);
}

void draw() {
  background(0);
  
  ellipse(x,y, diam, diam);
  rect(width-30, mouseY, esp, rectSize);
  
  x = x+speedX;
  y = y+speedY;
  
  if (x > width) {
    x = 150;
    y = 150;
    speedX = (random(3,5));
    speedY = (random(3,5));
    
  } else if ( x < 0 +diam/2) {
    speedX = speedX * -1.1;
  }
  
  if (y > height - diam/2 || y < 0 + diam/2) {
    speedY = speedY *-1;
    y = y +speedY;
  }
  
  if(x > width -30 - diam/2 && x < width-25 +diam/2 && y > mouseY-rectSize/2 && y < mouseY + rectSize/2)
  {
    speedX = -speedX;
  }
}
 