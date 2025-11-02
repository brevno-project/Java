class Pet {
  float x, y;
  float d;
  float vx, vy;

  Pet(float startX, float startY, float startD, float startVX, float startVY) {
    x = startX;
    y = startY;
    d = startD;
    vx = startVX;
    vy = startVY;
  }

  void move() {
    x += vx;
    y += vy;

    if (x > width - 50 || x < 50) {
      vx = -vx;
    }
    if (y > height - 50 || y < 50) {
      vy = -vy;
    }
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
