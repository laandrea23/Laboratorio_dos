// E1: Color y Forma
// Laura Andrea Hurtado Acosta - 202213259
// La composición realizada se basa en una parte de una obra de mosaico con patrón geométrico
// abstracto sin autor que sigue el estilo Bauhaus.

//Canva fondo blanco
size(500, 500);
background(225, 225, 225);

noStroke();

//First square
fill(53, 147, 209);
quad(1, 1, 166, 1, 166, 166, 1, 166);
fill(250, 156, 195);
arc(1, 166, 332, 332, PI + HALF_PI, TWO_PI);

//second square
fill(225, 225, 225);
quad(166, 1, 332, 1, 332, 166, 166, 166);
fill(4, 22, 33);
arc(166, 1, 166, 166, 0, HALF_PI);
arc(166, 166, 166, 166, PI + HALF_PI, TWO_PI);
arc(332, 1, 166, 166, 0, PI);
arc(332, 166, 166, 166, 0, PI + HALF_PI);

//Third square
fill(53, 147, 209);
quad(332, 1, 499, 1, 499, 166, 332, 166);
fill(250, 156, 195);
ellipse(415.5, 83, 163, 83);
fill(4, 22, 33);
ellipse(415.5, 83, 50, 50);


//fourth square
fill(232, 131, 73);
quad(1, 166, 166, 166, 166, 332, 1, 332);
fill(250, 156, 195);
arc(1, 166, 166, 166, 0, HALF_PI);
arc(1, 332, 166, 166, PI + HALF_PI, TWO_PI);
arc(166, 166, 166, 166, 0, PI);
arc(166, 332, 166, 166, 0, PI + HALF_PI);


//fifth square
fill(56, 84, 191);
quad(166, 166, 332, 166, 332, 332, 166, 332);
fill(232, 131, 73);
quad(249, 166, 332, 166, 332, 249, 249, 249);
fill(232, 131, 73);
quad(166, 249, 249, 249, 249, 332, 166, 332);
fill(226, 252, 33);
quad(207.5, 207.5, 290.5, 207.5, 290.5, 290.5, 207.5, 290.5);


//sixth square
fill(56, 84, 191);
quad(332, 166, 499, 166, 499, 332, 332, 332);
fill(250, 156, 195);
triangle(332, 332, 499, 166, 499, 332);
fill(4, 22, 33);
quad(373.5, 207.5, 456.5, 207.5, 456.5, 290.5, 373.5, 290.5);


//seventh square
fill(232, 131, 73);
quad(1, 332, 166, 332, 166, 499, 1, 499);
fill(45, 55, 214);
ellipse(83, 415.5, 166, 166);
fill(225, 225, 225);
ellipse(83, 415.5, 100, 100);
fill(4, 22, 33);
ellipse(83, 415.5, 50, 50);

//eighth square
fill(4, 22, 33);
quad(166, 332, 332, 332, 332, 499, 166, 499);
fill(63, 154, 232);
ellipse(249, 415.5, 163, 83);
fill(4, 22, 33);
ellipse(249, 415.5, 50, 50);


//ninth square
fill(232, 131, 73);
quad(332, 332, 499, 332, 499, 499, 332, 499);
fill(226, 252, 33);
quad(332, 415.5, 499, 415.5, 499, 499, 332, 499);
stroke(4, 22, 33);
strokeWeight(2);
fill(225, 225, 225);
quad(373.5, 373.5, 456.5, 373.5, 456.5, 456.5, 373.5, 456.5);
