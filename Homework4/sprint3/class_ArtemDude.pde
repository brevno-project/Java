class ArtemDude {
  float x, y;
  float d;
  float vx, vy;
  int cFlag;

  ArtemDude(float startX, float startY, float startD, float startVX, float startVY, int startC) {
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

    // по X + смена цвета
    if (x > width - 50) {
      x = width - 50;
      vx = -abs(vx);
      cFlag = 1 - cFlag;
    } else if (x < 50) {
      x = 50;
      vx = abs(vx);
      cFlag = 1 - cFlag;
    }

    // по Y + уменьшение
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
    if (cFlag == 0) fill(255);
    else            fill(120);

    strokeWeight(2);
    triangle(x-15*d, y+20*d,
             x+15*d, y+20*d,
             x,      y);          // body

    fill(255);
    rect(x-5*d, y+9*d, 4*d, 2*d);  // left eye
    rect(x+1*d, y+9*d, 4*d, 2*d);  // right eye

    stroke(0);
    line(x+1*d,  y+8*d, x+5*d,  y+8*d); // eyebrow right
    line(x-5*d,  y+8*d, x-1*d,  y+8*d); // eyebrow left

    fill(40,150,180);
    circle(x-2.7*d, y+10*d, 1.4*d);     // pupil left
    circle(x+3.4*d, y+10*d, 1.6*d);     // pupil right

    fill(255);
    ellipse(x, y+16*d, 8*d, 3*d);       // mouth

    fill(240);
    rect(x-0.5*d, y+14.6*d, 1.5*d, 2*d); // tooth
  }
}
