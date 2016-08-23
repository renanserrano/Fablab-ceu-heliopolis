import cc.arduino.*;
import org.firmata.*;
Arduino arduino;

import processing.serial.*;

float x = 150;
float y = 150;
float speedX = random(3, 5);
float speedY = random (3, 5);
float diam = 20;
int esp = 10;
float rectSize = 150;
//Serial myPort;
//String val;
float valor;

void setup() {
  size(500, 500);
  noStroke();
  fill(255);
  rectMode(CENTER);
  //println(Serial.list());
  //myPort = new Serial(this, Serial.list()[32], 9600);
  println (Arduino.list());
  arduino = new Arduino(this, Arduino.list()[1], 57600);
}

void draw() {
  valor = map(arduino.analogRead(5), 0, 1022, 0, height);
  //if ( myPort.available() > 0) {
  //  val = myPort.readStringUntil('\n');
  //}
  //if (val !=null) {
  //  //println(val);
  //  valor = float(val);
  //  valor = map(valor, 0,1024, 0, height);
  //  println(valor);
  //}
  

  background(0);

  ellipse(x, y, diam, diam);
  rect(width-30, valor, esp, rectSize);

  x = x+speedX;
  y = y+speedY;

  if (x > width) {
    x = 150;
    y = 150;
    speedX = (random(3, 5));
    speedY = (random(3, 5));
  } else if ( x < 0 +diam/2) {
    speedX = speedX * -1.1;
  }

  if (y > height - diam/2 || y < 0 + diam/2) {
    speedY = speedY *-1;
    y = y +speedY;
  }

  if (x > width -30 - diam/2 && x < width-25 +diam/2 && y > valor-rectSize/2 && y < valor + rectSize/2)
  {
    speedX = -speedX;
  }
}