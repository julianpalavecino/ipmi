//Julian Palavecino
//tp3 (recuperatorio)
//Comision 1
// https://www.youtube.com/watch?v=sbDxHirVDoo&ab_channel=julianpalavecino

boolean toggleColor = true;
color randomColor = color(255);

void setup() {
  size(800, 400); 
  background(255);
  strokeWeight(8); 
  noFill();
}

void draw() {

 PImage img = loadImage("ilusion.jpg");   //Cargo la imagen
  img.resize(width / 2, height);
  image(img, 0, 0);

      //------ CREACION DE CUADRADOS------
  int numSquares = 15;     
  float step = height / (numSquares * 2); 

  for (int i = 0; i < numSquares; i++) {
    float size = step * (i + 1) * 2;

 
 // cuadrado superior izquierdo
    if (i % 2 == 0) {
      stroke(toggleColor ? 0 : randomColor);
    } else {
      stroke(toggleColor ? randomColor : 0);
    }
    rect(width / 2 + width / 4 - size / 2, height / 2 - size / 2, size / 2, size / 2);

    // cuadrado superior derecho
    if (i % 2 == 1) {
      stroke(toggleColor ? 0 : randomColor);
    } else {
      stroke(toggleColor ? randomColor : 0);
    }
    rect(width / 2 + width / 4, height / 2 - size / 2, size / 2, size / 2);

    // cuadrado inferior izquierdo
    if (i % 2 == 1) {
      stroke(toggleColor ? 0 : randomColor);
    } else {
      stroke(toggleColor ? randomColor : 0);
    }
    rect(width / 2 + width / 4 - size / 2, height / 2, size / 2, size / 2);

    // cuadrado inferior derecho
    if (i % 2 == 0) {
      stroke(toggleColor ? 0 : randomColor);
    } else {
      stroke(toggleColor ? randomColor : 0);
    }
    rect(width / 2 + width / 4, height / 2, size / 2, size / 2);
  }
}

//intercambio colores entre blanco y negro
void mousePressed() {
  toggleColor = !toggleColor;
}

//agrego colores randoms y reincio variables
void keyPressed() {
  if (key == 'r' || key == 'R') {
    randomColor = color(random(255), random(255), random(255));
  } else if (key == 'c' || key == 'C') {
    resetVariables();
  }
}

void resetVariables() {
  toggleColor = true;
  randomColor = color(255);
}
int suma(int num1, int num2) {
  return num1 + num2 ;
}
