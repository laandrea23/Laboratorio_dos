void setup(){
  background(255);
  size(500,500);
  noLoop();
}

void draw(){
  //Variable condición de incremento
  for(int x = 0; x <= width; x+=50){
    for(int i = 0; i <= height; i+=50){
      fill(random(255));
      rect(x, i, 50, 50);
      triangle(x, i, x+25, i+25, x-25,i+25);
    }
  }
}
