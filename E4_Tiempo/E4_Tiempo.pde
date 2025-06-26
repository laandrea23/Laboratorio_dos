//E4_Tiempo
//Laura Andrea Hurtado - 202213259
//Con base en la lectura The Digital Architecture of Time Management de Judy Wajcman,
//el objetivo es repensar cómo percibimos y representamos el tiempo, alejándonos de
//la forma digital y mecánica a la que estamos acostumbrados.

//definición del canva
void setup() {
  size(600, 600);
  colorMode(HSB, 360, 100, 100);
  noFill();
}

void draw() {
  // Obtener hora del sistema
  int h = hour();
  int m = minute();
  int s = second();
  //Formato 24 horas para el efecto del color del cielo de fondo
  float hora24 = h + m / 60.0;
  // formato 12 horas para las manecillas
  float hora12 = h % 12 + m / 60.0;

  // ----------------- FONDO  -----------------
  //Madrugada Azul oscuro
  //Amanecer de azul a naranja
  //Dia azul claro
  //Atardecer pasa de naranja a azul
  //Noche azul oscuro

//Como se usa el sistema de color HBS se modifica el Hue y el Bright
//map para la trancisión del color
  float cieloHue;
  float cieloBright;

  if (hora24 < 6) {
    cieloHue = 230;
    cieloBright = 20;
  } else if (hora24 < 8) {
    cieloHue = map(hora24, 6, 8, 230, 30);
    cieloBright = map(hora24, 6, 8, 20, 90);
  } else if (hora24 < 18) {
    cieloHue = 210;
    cieloBright = 100;
  } else if (hora24 < 20) {
    cieloHue = map(hora24, 18, 20, 30, 230);
    cieloBright = map(hora24, 18, 20, 90, 20);
  } else {
    cieloHue = 230;
    cieloBright = 20;
  }

  background(cieloHue, 60, cieloBright);
  translate(width / 2, height / 2);
  
  // Intensidad de color variable cuando se acerca el mouse al centro
  float intensidadColor = map(mouseY, 0, height, 50, 100);

  // ----------------- RADIO BASES -----------------
  float horaRadio = 240;
  float minutoRadio = 180;


  // ----------------- HORA -----------------
  stroke(200, 80, intensidadColor, 100);
  strokeWeight(3);
  noFill();
  ellipse(0, 0, horaRadio * 2, horaRadio * 2);
  // Dibujo del punto para indicar la hora
  float anguloHora = map(hora12, 0, 12, 0, TWO_PI) - HALF_PI;
  float xHora = horaRadio * cos(anguloHora);
  float yHora = horaRadio * sin(anguloHora);
  fill(200, 100, 100);
  noStroke();
  ellipse(xHora, yHora, 12, 12);

  // ----------------- MINUTOS -----------------
  stroke(100, 80, intensidadColor, 100);
  strokeWeight(2);
  noFill();
  ellipse(0, 0, minutoRadio * 2, minutoRadio * 2);

  float anguloMinuto = map(m + s / 60.0, 0, 60, 0, TWO_PI) - HALF_PI;
  float xMin = minutoRadio * cos(anguloMinuto);
  float yMin = minutoRadio * sin(anguloMinuto);
  fill(100, 100, 100);
  noStroke();
  ellipse(xMin, yMin, 10, 10);

  // ----------------- SEGUNDOS -----------------
  // latido sincronizado con el segundo actual
  float segundoRadio = map(s, 0, 60, 40, 200);
  float pulso = map(sin(frameCount * 0.1), -1, 1, -10, 10);
  stroke(30, 100, intensidadColor, 100);
  strokeWeight(4);
  noFill();
  ellipse(0, 0, (segundoRadio + pulso) * 2, (segundoRadio + pulso) * 2);

  // ----------------- CENTRO -----------------
  fill(0, 0, 100);
  noStroke();
  ellipse(0, 0, 15, 15);
}

//Esta visualización del tiempo nace como una crítica y alternativa a la forma en que
//los dispositivos digitales actuales fragmentan, cuantifican y estandarizan nuestra
//percepción del tiempo. Inspirada en la reflexión de Judy Wajcman sobre cómo la
//tecnología moldea nuestra experiencia temporal, este reloj no busca mostrar la
//hora como un dato exacto, sino como un ritmo orgánico y cíclico, visualmente anclado
//en los cambios del entorno.


//Para realizar las pruebas de color se cambia la hora del dispositivo manualmente
