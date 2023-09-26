PShape ball;
PImage txtr;
float theta;

PImage img;

float x = 40;
float y = 40;

void setup (){
  size (650, 650, P3D);
 
  txtr = loadImage("Alb.jpg");
  
  ball = loadShape("TIE.obj"); 
  ball.setTexture(txtr);
  
  img = loadImage("estrellas.jpg");

  //attach texture to the 3D shape
}


void draw () {
  background (img);
  //lights();
  
  pushMatrix();
  
  x = mouseX - width / 2;
  y = mouseY - height / 2;
  
  translate(width / 2, height / 2);
  // rotate(theta);
  // rotateZ(theta/2);
  
  //rotateX(frameCount * 0.04);
  rotateY(frameCount * 0.04);
 
  translate(x, y, 0);
  
  scale(150);
  shape(ball);
  popMatrix();
  
  
 // theta+=.03; 
  //increment angle
}
