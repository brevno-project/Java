class Pet {
  float x, y;
  float d;
  float vx, vy;
  int cFlag;

  Pet(float startX, float startY, float startD, float startVX, float startVY, int startC) {
    x = startX;
    y = startY;
    d = startD;
    vx = startVX;
    vy = startVY;
    cFlag = startC;
  }

  void move() {
    x += vx;
    y += vy;

    // по X
    if (x > width - 50) {
      x = width - 50;
      vx = -abs(vx);
      cFlag = 1 - cFlag;
    } else if (x < 50) {
      x = 50;
      vx = abs(vx);
      cFlag = 1 - cFlag;
    }

    // по Y
    if (y > height - 50) {
      y = height - 50;
      vy = -abs(vy);
      d = d * 0.9;
    } else if (y < 50) {
      y = 50;
      vy = abs(vy);
      d = d * 0.9;
    }
  }

  void show() {
    if (cFlag == 0) fill(255, 255, 0);
    else            fill(255,   0,255);

    circle(x, y, d*10);                // face
    ellipse(x, y+d, d*5, d*4);         // muzzle

    fill(0);
    ellipse(x, y-0.5*d, d*2, d);       // nose
    circle(x+d*2, y-d*2, 0.5*d);       // right eye
    circle(x-d*2, y-d*2, 0.5*d);       // left eye
  }
}
