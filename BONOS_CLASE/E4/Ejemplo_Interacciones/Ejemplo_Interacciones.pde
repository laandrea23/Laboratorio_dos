//COMANDOS IMPORTANTES //<>//
//ctrl + t = organizar código
//ctrl + / = comentar codigo
//ctrl + r = correr código
//ctrl + d = visualizar variables

//framerate = fotogramas por segunto = 60 por default

int size = 200;

int posBordeSuperior;
int posBordeInferior;
int posBordeIzquierdo;
int posBordeDerecho;


void setup() {
  size(1000, 1000);
}

void draw() {
  background(150, 150, 200);
  noStroke();

  // float distancia = dist(mouseX, mouseY, width/2, height/2);

  posBordeSuperior= height/2 - (size/2);
  posBordeInferior = height/2 + (size/2);
  posBordeIzquierdo = width/2 - (size/2);
  posBordeDerecho = width/2 + (size/2);

  //if(mouseX > posBordeIzquierdo && mouseX < posBordeDerecho && mouseY > posBordeSuperior && mouseY < posBordeDerecho){
  //  fill(45, 80, 50);
  //}
  //else{
  //  fill(255);
  //}

  if ((keyPressed == true) && ((key == 'a') || (key == 'A'))) {
    fill(45, 80, 50);
  } else if ((keyPressed == true) && ((key == 's') || (key == 'S'))) {
    fill(50, 100, 89);
  } else {
    fill(255);
  }

  rectMode(CENTER);
  rect(width/2, height/2, size, size);

  //Se puede observar que se usa una misma variable varias veces en el codigo
  //por lo que para organizar mejor se recomienda crear una variable global para cada una
}
