// Sistema solar en movimiento
//Laura Hurtado - 202213259

int numPlanetas = 6;
float[] radios = new float[numPlanetas];
float[] velocidades = new float[numPlanetas];
float[] tamanos = new float[numPlanetas];
color[] colores = new color[numPlanetas];

void setup() {
//Tamaño del canva
  size(600, 600);
// Either RGB or HSB, corresponding to Red/Green/Blue and Hue/Saturation/Brightness
  colorMode(HSB, 360, 100, 100); // HSB para colores más expresivos

  // Inicializamos los valores
  for (int i = 0; i < numPlanetas; i++) {
    //map() distribuirlos desde 50 hasta 250 píxeles desde el centro.
    radios[i] = map(i, 0, numPlanetas-1, 50, 250); // Distancia del centro
    velocidades[i] = random(0.01, 0.03); // Velocidad angular
    tamanos[i] = random(10, 30); // Tamaños iniciales
    colores[i] = color(map(i, 0, numPlanetas-1, 0, 360), 80, 80); // Tonos distintos
  }
}

void draw() {
  background(0);
  
  // Orbitas
  stroke(255, 30);
  noFill();
  for (int i = 0; i < numPlanetas; i++) {
    ellipse(width/2, height/2, radios[i]*2, radios[i]*2);
  }

  // Sol central pulsante
  //frameCount: oscilción suave
  //frameCount: cuenta cuántos frames han pasado desde que empezó el programa.
  float pulso = map(sin(frameCount * 0.05), -1, 1, 50, 80);
  fill(50, 100, 100);
  noStroke();
  ellipse(width/2, height/2, pulso, pulso);

  // Movimiento de planetas
  for (int i = 0; i < numPlanetas; i++) {
    float angulo = frameCount * velocidades[i];
    float x = width/2 + radios[i] * cos(angulo);
    float y = height/2 + radios[i] * sin(angulo);
    
    // pulso de planetas
    float tamano_Planeta = map(sin(frameCount * velocidades[i]), -1, 1, tamanos[i] - 5, tamanos[i] + 5);
    
    // Cambio de color 
    //hue() es una función que extrae el valor del tono (color base) de un color que está en el modo de color HSB (Hue, Saturation, Brightness).
    float tono = (hue(colores[i]) + frameCount * 0.3) % 360;
    fill(tono, 80, 100);
    
    ellipse(x, y, tamano_Planeta, tamano_Planeta);
  }
}

//Decidi hacer el sistema solar ya que primero me deja aplicar muchas de las funciones aprendidas hasta el momento 
//y agregar map() y colormode(), adicionalemte es una composición completa en la que se puede
//visualizar como va cambiando desde color y forma en los elementos que componen el espacio.

//https://processing.org/reference/map_.html
//https://processing.org/reference/colorMode_.html
