//tp2
//comision: 5.
//NOMBRE: Thiago Zambrano.
//legajo: 120387/2
PImage img1, img2, img3; // Variables para las imágenes
int screen = 1; // Variable para rastrear la pantalla actual

void setup() {
  size(640, 480); 
  img1 = loadImage("foto1.png"); // Cargar la primera imagen
  img2 = loadImage("foto2.png"); // Cargar la segunda imagen
  img3 = loadImage("foto3.png"); // Cargar la tercera imagen
}

void draw() {
  background(255); // Fondo blanco

  if (screen == 1) {
    // Pantalla 1
    image(img1, 0, 0, width, height - 100); // Mostrar la primera imagen
    textSize(16);
    fill(0);
    text("Estas son dos gotas de agua felices en una nube, disfrutando de su tiempo juntas.", 0, height - 80, width - 40, 40);
    drawButton("Siguiente", width - 120, height - 50, 100, 30);
  } else if (screen == 2) {
    // Pantalla 2
    image(img2, 0, 0, width, height - 100); // Mostrar la segunda imagen
    textSize(16);
    fill(0);
    text("Las gotas de agua empiezan a caer del cielo como lluvia, emocionadas por su viaje.", 20, height - 80, width - 40, 40);
    drawButton("Siguiente", width - 120, height - 50, 100, 30);
  } else if (screen == 3) {
    // Pantalla 3
    image(img3, 0, 0, width, height - 100); // Mostrar la tercera imagen
    textSize(16);
    fill(0);
    text("Finalmente, las gotas de agua aterrizan sobre un colorido paraguas, riendo y jugando.", 20, height - 80, width - 40, 40);
    drawButton("Reiniciar", width - 120, height - 50, 100, 30);
  }
}

void mousePressed() {
  if (mouseX > width - 120 && mouseX < width - 20 && mouseY > height - 50 && mouseY < height - 20) {
    if (screen == 1 || screen == 2) {
      screen++;
    } else if (screen == 3) {
      screen = 1;
    }
  }
}

void drawButton(String label, int x, int y, int w, int h) {
  fill(200);
  rect(x, y, w, h);
  fill(0);
  textAlign(CENTER, CENTER);
  text(label, x + w / 2, y + h / 2);
}
