//tp3
//comision: 5.
//NOMBRE: Thiago Zambrano.
//legajo: 120387/2

void setup() {
  size(800, 400);
  noLoop();
}

void draw() {
  background(255);
  int columnas = 20; // Número de columnas
  int filas = 10; // Número de filas
  float Diametro = 40; // Diámetro de los círculos
  
  for (int i = 0; i < columnas; i++) {
    for (int j = 0; j < filas; j++) {
      float x = map(i, 0, columnas-1, 0, width);
      float y = map(j, 0, filas-1, 0, height);
      
      //  efecto óptico
      float distancia = dist(x, y, width/2, height/2);
      float diametro = Diametro * sin(distancia / 20.0);
      
      // color basado en la posición
      if ((i + j) % 2 == 0) {
        fill(0);
      } else {
        fill(255);
      }
      ellipse(x, y, diametro, diametro);
    }
  }
}
