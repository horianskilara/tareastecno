class Juego {
  Calabaza calabaza;
  //Fantasmas fanta;
  Fuego fuego;
  Pantallas p;
  Creditos cred;
  Boton boton;
  Boton boton2;
  int puntos, pantalla;
  int municiones;
  PFont fuente;
  Fantasmas [] fantasmas = new Fantasmas[5];

  Juego() {
    calabaza = new Calabaza();
    //fanta = new Fantasmas();
    fuego = new Fuego(width/2, height);
    cred =  new Creditos();
    boton = new Boton(430, 420, 140, 60);
    boton2 = new Boton(20, 420, 140, 60);
    p = new Pantallas();
    pantalla = 0;
    fuente = loadFont("fuente.vlw");
    municiones = 20; //arreglar
    textSize(30);
    for (int i=0; i<fantasmas.length; i++) {
      fantasmas[i] = new Fantasmas(i*height/3);
    }
  }

  void jugarJuego() {
    
     p.dibujarPantallas(pantalla);
    if (pantalla == 0) {
      boton.dibujarBoton(0, 1);
    }
    
     if (pantalla == 1) {
      boton.dibujarBoton(1, 2);
    }
    
    if (pantalla == 2) {
       jugar();

    }
    
    if (pantalla == 3) {
      boton.dibujarBoton(3, 5);
      boton2.dibujarBoton(3, 0);
      reiniciarPuntos();


    }
    
    if (pantalla == 4) { 
    boton.dibujarBoton(4, 5);
    boton2.dibujarBoton(4, 0);
    reiniciarPuntos();

    }
    
    if (pantalla == 5) {
    boton2.dibujarBoton(5, 0);
    cred.creditosFinales();
    reiniciarPuntos();

    }
    
  } 
    
    
 void jugar(){   
    calabaza.dibujarCalabaza();
    //fanta.dibujarFantasma();
    //fanta.moverFantasma();

    for (int i=0; i<fantasmas.length; i++) {
      fantasmas[i].dibujarFantasma();
      fantasmas[i].moverFantasma();
    }

    fuego.dibujarFuego();
    fuego.moverFuego(calabaza.cx);
    golpearFantasmas();
    textFont(fuente);
    textSize (16);
    fill(255);
    text("Puntos: "+ puntos, 80, 30);
    text("Municiones: "+ municiones, 400, 30);

 }
  
  void moverPersonaje(int tecla) {
    calabaza.moverCalabaza(tecla);
    /*if (tecla==BACKSPACE){
       fuego.dispararFuego();
   }*/
  }
  
 
  void golpearFantasmas() {
    /*float distan = dist(fuego.fuex, fuego.fuey, fanta.fx, fanta.fy);
    if (distan<fanta.ftam/2+fuego.fuetam/2) {
      fuego.fuegoLanzado = false;
      fanta.golpear();
      puntos++;
    }*/
    for (int i=0; i<fantasmas.length; i++) {
      float distancia = dist(fuego.fuex, fuego.fuey, fantasmas[i].fx, fantasmas[i].fy);
      if (distancia<fantasmas[i].ftam/2+fuego.fuetam/2) {
        fuego.fuegoLanzado = false;
        fantasmas[i].golpear();
        puntos++;
        choque.amp(0.2);
        choque.play(); 
      }
    }
    if (puntos == 12 && municiones >=0){
        pantalla = 3;
        
      } else if (puntos <= 15 && municiones == 0){
        pantalla = 4;
    }
  
}
 
  
  


  void detectarBoton() {
    if (boton.tocarBoton(430, 420, 140, 60) && pantalla == boton.actual) {
      pantalla = boton.sig;
    }
    
    if (boton2.tocarBoton(20, 420, 140, 60) && pantalla == boton2.actual) {
      pantalla = boton2.sig;
    }
  }
  
  void atacarEnemigo() {
    fuego.dispararFuego();
    municiones--;
    }

  
  
  void reiniciarPuntos(){
    municiones = 15;
    puntos = 0;
  }
 
  }
  
