class Fantasmas {
  float fx, fy, ftam, velocidad;
  boolean fantasmaGolpeado;
  PImage fantasmafoto;

  /*Fantasmas() {
    ftam = random(40, 70); 
    fx =random(-width/2, -ftam); 
    fy = random(ftam/2, height/2);
    velocidad = random(2, 4);
    fantasmaGolpeado = false;
    fantasmafoto = loadImage ("fantasmita.png");
  }*/

  Fantasmas(float fy_) {
    ftam = random(50, 90); 
    fx =random(-width/3, -ftam/2); 
    fy = fy_; // ubicacion vertical
    velocidad = random(4, 5);
    fantasmafoto = loadImage ("fantasmita.png");
    fantasmaGolpeado = false;
  }

  void dibujarFantasma() {
    image(fantasmafoto, fx, fy, ftam, ftam);

  }
  void moverFantasma() {
    if (fx>width+ftam || fantasmaGolpeado ) { // vuelve a salir de la ventana
      ftam = random(50, 70); 
    fx =random(-width/3, -ftam/2); 
    velocidad = random(4, 5);
      fantasmaGolpeado = false;
    }
    fx+=velocidad; // se mueve
  }
  void golpear() {
    fantasmaGolpeado = true;
  }
}
