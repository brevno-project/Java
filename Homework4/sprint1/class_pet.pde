class Pet {
  float x, y;
  float d;

  Pet(float startX, float startY, float startD) {
    x = startX;
    y = startY;
    d = startD;
  }

  void show() {
    fill(255,160,60);
    circle(x, y, d*10);                // face
    ellipse(x, y+d, d*5, d*4);         // muzzle

    fill(0);
    ellipse(x, y-0.5*d, d*2, d);       // nose
    circle(x+d*2, y-d*2, 0.5*d);       // right eye
    circle(x-d*2, y-d*2, 0.5*d);       // left eye
  }
}
