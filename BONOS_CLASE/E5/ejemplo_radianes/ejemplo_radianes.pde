int diametro = 200;
float radio = diametro/2;
float circunferencia = TWO_PI * diametro;

int centroHorizontal;
int centroVertical;

void setup() {
  size(1000, 1000);
  centroHorizontal = width/2;
  centroVertical = height/2;
}

void draw() {
  background(255);
  noStroke();
  
  translate(centroHorizontal,centroVertical);
  noFill();
  
  stroke(0);
  ellipse(0, 0, diametro, diametro);
  //Dibuja el diametro
  stroke(0);
  line(-radio, 0, radio, 0);
  //Dibuja el radio
  stroke(0);
  line( 0, 0, 0, radio);

  //float d = dist (mouseX, mouseY, centroHorizontal, centroVertical);
  //if(d < radio){
  //  fill(45, 60, 90);
  //}
  //else{
  //  fill(255);
  //}
  
}
//Longitud de arco = al radio tenemos 1 radian
