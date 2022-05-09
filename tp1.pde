int pantalla = 0;
int py, px; 

//float transparencia = 255;
//float tam = 0;
//float var = 0;
String texto = "";
PFont fuente;
PImage logo, fondo, img1, img2, img3, img4, img5, img7, img8;

void setup (){
  size (500, 500);

  py = 480;
    px = 480;

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

void draw(){
  
  background(0);
//  transparencia = map(py, 550, 0, 20, 255); 
 // var = map(py, 550, 0, 0, 50); 
 // tam = map (py, 550, 100, 45, 30);
  
  if (py >= 0 && pantalla < 4){
      py = py-5;
} else {
      py = height;
} 
  
  if (py <= 0){
    pantalla++;
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
