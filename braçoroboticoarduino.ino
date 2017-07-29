#include <Servo.h>

//LEITURA POTENCIOMETRO
int direito;
int esquerdo;
int garra;
//int base;
int novoesquerdo;
int novodireito;
int novogarra;
//int novobase;

//SERVOS
Servo servoDireito;
Servo servoEsquerdo;
Servo servoGarra;
//Servo servoBase;

void setup ()  {
  Serial.begin (9600);
  
  pinMode (A0, INPUT);
  pinMode (A1, INPUT);
  pinMode (A2, INPUT);
  pinMode (A3, INPUT);
  
  
  servoDireito.attach  (3);
  servoEsquerdo.attach (5);
  servoGarra. attach   (9);
  //servoBase. attach (6);
}
void loop() {
  
  //servo direto                                               
  
  direito = analogRead (A0);                                                                   
  novodireito = map(direito, 0, 1023, 80, 179);              
  
  //servo esquerdo
  
  esquerdo = analogRead (A1);
  novoesquerdo = map(esquerdo, 0, 1023, 40, 179);
  
  //servo garra
  
  garra = analogRead (A2);
  novogarra = map (garra , 0, 1023, 30, 150);
  
  //servo base
  //base = analogRead (A3);
  //novobase = map(base, 0, 1023, 0, 179);
  
  
  servoDireito.write  (novodireito);
  servoEsquerdo.write (novoesquerdo);
  servoGarra.write    (novogarra);
  //servoBase.write     (novobase);
   
  Serial.println(novogarra);
  
 
  delay(10);    
}
