int pantalla = 0;
int py = 480;
String texto = "";
PFont fuente;
PImage logo, fondo, img1, img2, img3, img4, img5, img7, img8;

void setup () {
  size (500, 500);

  fondo = loadImage ("fondo.png");
  logo = loadImage ("logo.png");
  img1 = loadImage ("img1.png");
  img2 = loadImage ("img2.png");
  img3 = loadImage ("img3.png");

  //fuente = createFont(FontBold, 30);

  fuente = loadFont("fuente1.vlw");
  textAlign(CENTER, TOP);
  textFont(fuente);
}

void draw() {

  background(0);

  if (py >= 0 && pantalla < 4) {
    py = py-5;
  } else {
    py = height;
  } 

  if (py <= 0) {
    pantalla++;
  } 




  if (pantalla == 0 ) {
    image(fondo, 0, 0, width, height);
    image (logo, 50, py, 400, 100);
    if (py <= 200) {
      py = 200;
    }
  } else if (pantalla == 1) {
    image(img1, 0, 0, width, height);
    textSize(22);
    text (texto, 140, py);
    fill(255);
    texto = "ORIGINAL CONCEPT \n Hajime Yatate";
    text (texto, 140, py-100);
    texto = "SERIES STORY EDITOR \n Keiko Nobumoto";
    text (texto, 140, py-200);
    texto = "SET DESIGNER \n Isamu Imakake";
  } 
  if (pantalla == 2) {
    image(img2, 0, 0, width, height);
    textSize(22);
    text (texto, 140, py);
    fill(255);
    texto = "MUSIC PRODUCER \n Toshiaki Ohta";
    text (texto, 140, py-100);
    texto = "MUSIC DIRECTORS \n Shiro Sasaki \n Yukako Inoue";
    text (texto, 140, py-150);
    texto = "MUSIC PRODUCED BY \n Victor Entertainment";
  } else if (pantalla == 3) {
    image(img3, 0, 0, width, height);
    textSize(22);
    text (texto, 140, py);
    fill(255);
    texto = "MUSIC PRODUCER \n Toshiaki Ohta";
    text (texto, 140, py-100);
    texto = "MUSIC DIRECTORS \n Shiro Sasaki \n Yukako Inoue";
    text (texto, 140, py-200);
    texto = "MUSIC PRODUCED BY \n Victor Entertainment";
  }
}

void keyPressed() {
  if (keyCode == ENTER && pantalla == 0 && py == 200) {
    py = height;

    pantalla++;
  }
}


  if (pantalla == 0 ) {
    image(fondo, 0, 0, width, height);
    image (logo, 50, py, 400, 100);
    if (py <= 200){
      py = 200;
    
   } 
  }
 

else if (pantalla == 1){
    image(img1, 0, 0, width, height);
    textSize(22);
    text (texto, 140, py);
    fill(255);
    texto = "ORIGINAL CONCEPT \n Hajime Yatate";
    text (texto, 140, py-100);
    texto = "SERIES STORY EDITOR \n Keiko Nobumoto";
    text (texto, 140, py-200);
    texto = "SET DESIGNER \n Isamu Imakake"; 

}

else if (pantalla == 2){
    image(img2, 0, 0, width, height);
    textSize(22);
    text (texto, 140, py);
    fill(255);
    texto = "MUSIC PRODUCER \n Toshiaki Ohta";
    text (texto, 140, py-100);
    texto = "MUSIC DIRECTORS \n Shiro Sasaki \n Yukako Inoue";
    text (texto, 140, py-200);
    texto = "MUSIC PRODUCED BY \n Victor Entertainment";

}
  
  else if (pantalla == 3){
    image(img3, 0, 0, width, height);
    textSize(22);
    text (texto, 140, py);
    fill(255);
    texto = "MUSIC PRODUCER \n Toshiaki Ohta";
    text (texto, 140, py-100);
    texto = "MUSIC DIRECTORS \n Shiro Sasaki \n Yukako Inoue";
    text (texto, 140, py-200);
    texto = "MUSIC PRODUCED BY \n Victor Entertainment";

}
}

void keyPressed(){
  if (keyCode == ENTER && pantalla == 0 && py == 200){
    pantalla++;
    py = height;
  }


}
