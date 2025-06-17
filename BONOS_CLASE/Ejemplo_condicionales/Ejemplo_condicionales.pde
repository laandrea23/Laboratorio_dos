//Inicializamos la variable
int posX;
int posY;
int speed = 1;
int speedY=3;
void setup(){
  
  size(500,500);
}

void draw(){
  background(255);
    
  noStroke();
  fill(178, 25, 160);
  
  //Declaramos el valor de la variable
  //posX = posX + 1;
  //posY = posY + 1;
  //ellipse(posX, posY, 50, 50);
  
  posX += speed;
  posY += speedY;
  if (posX > width || posX < 0)
  {
   speed = -speed;
  }
  else if (posY > height || posY < 0)
  {
   speedY = -speedY;
  }


  ellipse(posX, posY, 50, 50);
}
