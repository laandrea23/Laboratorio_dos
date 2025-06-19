//void setup() {
//  size(1000,1000);
//}

//void draw(){
// background(255);
// fill(255,100,40);
// noStroke();
// triangle(mouseX, mouseY, mouseX/2, mouseY/2, 130, 500);
//}


int numBubbles = 10;
float[] xPositions;
float[] yPositions;

float[] speedX;
float[] speedY;

int[] Xdirection;
int[] Ydirection;


void setup() {
  size(500, 500);

  //Definimos el tamaño del array
  xPositions = new float[numBubbles];
  yPositions = new float[numBubbles];

  speedX = new float[numBubbles];
  speedY = new float[numBubbles];

  Xdirection = new int[numBubbles];
  Ydirection = new int[numBubbles];

  //Creamos los valores
  for (int i=0; i< xPositions.length; i++) {
    xPositions[i] = random(width); // lee el random de 0 a ...
    yPositions[i] = random(height);
    speedX[i] = random(5);
    speedY[i] = random(5);
    Xdirection[i] = (random(1) >0.5) ? 1 : -1; //Asegurar que el valor sea 1 o -1
    Ydirection[i] = (random(1) >0.5) ? 1 : -1;

  }
}

void draw() {
  background(255);
    
  noStroke();
  fill(178, 25, 160);
  
  
  for (int i=0; i < numBubbles; i++) {
    
    //Actualizar la posición de las burbujas
    
    xPositions[i]  = xPositions[i] + (speedX[i] * Xdirection[i]);
    yPositions[i]  = yPositions[i] + (speedY[i] * Ydirection[i]);
    
    if (xPositions[i]  > width || xPositions[i]  < 0)
    {
      Xdirection[i] = Xdirection[i] *-1;
      
    } else if (yPositions[i]  > height || yPositions[i]  < 0)
    {
      Ydirection[i] = Ydirection[i] *-1;
    }
    fill (random(100), random(80), random(200));
    ellipse(xPositions[i], yPositions[i], 50, 50);
  }
}
