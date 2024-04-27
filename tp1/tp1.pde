//tp1.
//comision 5.
//Thiago Zambrano,legajo:120387/2

PImage img;

void setup(){
  size(800,400);
  img = loadImage("limonn.png");
  
}
   
void draw(){
background(255); // Fondo blanco
 image(img,0,0,400,400);
  
  // Dibuja la sombra del limon
  noStroke();
  fill(200);
  ellipse(500, 300, 250, 150); // Óvalo para la sombra
  
  // Dibuja el cuerpo del limon
  fill(240, 255, 0); // Color amarillo
  ellipse(500, 200, 250, 300); // Óvalo para el limon
  
  // Dibuja la punta del limon
  fill(240, 255, 0); // Color amarillo
  ellipse(500, 90, 90, 100); // Óvalo para la punta
  
 
  fill(139, 69, 19); // Color marrón
}
