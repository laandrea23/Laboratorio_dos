int h;
int m;
int s;

String timeString;

void setup(){
  size(600, 600);
  textSize(64);           // Tamaño grande para que se vea bien
  textAlign(CENTER, CENTER); // Centra el texto en pantalla
  fill(255);       

}

void draw (){
  background(0);
  
  h = hour();
  m = minute ();
  s = second();
  
  //transformar la variable tipo int en String
  
  timeString= nf(h, 2) + ':' + nf(m, 2)+ ';' + nf(s,2);
  
  //lo dibuja en el canva centrado
  text(timeString, width/2, height /2);
  
}
  
