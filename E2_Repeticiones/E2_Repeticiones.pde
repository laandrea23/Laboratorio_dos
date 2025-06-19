void setup() {
  size(500, 500);
  background(70, 0, 110);

}

void draw(){
 for(int x=0; x <= width; x+=100){
   for(int i = 25; i <= height+75; i+=100){
      noStroke();
      fill(110, 50, 190);
      quad(x, i, x+25, i-25, x+100, i+50, x+75, i+75);
    }
  }
  
  for(int x=125; x <= width+75; x+=100){
   for(int i = 0; i <= height+75; i+=100){
     noStroke(); 
     fill(160, 110, 255);
     quad(x, i, x+25, i+25, x-50, i+100, x-75, i+75);
    }
  }

 for(int x=25; x <= width; x+=100){
   for(int i = 50; i <= height+75; i+=100){
     fill(215, 160, 255);
     triangle(x, i, x+50, i+50, x-50, i+50);
    }
  }
  
}
