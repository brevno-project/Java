class Pet {
  float x, y, d, vx, vy;
  int cFlag;

  Pet(float sx, float sy, float sd, float svx, float svy, int sc) {
    x = sx; y = sy; d = sd; vx = svx; vy = svy; cFlag = sc;
  }

  void move() {
    if (x > width - 50 || x < 50) {
      vx = -vx;
      cFlag = int(random(2));
      vx *= random(0.8, 1.3);
      if (abs(vx) < SPEED_MIN) vx = SPEED_MIN * sign(vx);
      if (abs(vx) > SPEED_MAX) vx = SPEED_MAX * sign(vx);
    }
    if (y > height - 50 || y < 50) {
      vy = -vy;
      d *= 0.9;
      cFlag = int(random(2));
      vy *= random(0.8, 1.3);
      if (abs(vy) < SPEED_MIN) vy = SPEED_MIN * sign(vy);
      if (abs(vy) > SPEED_MAX) vy = SPEED_MAX * sign(vy);
    }
    x += vx;
    y += vy;
  }

  void show() {
    if (cFlag == 0) fill(255,255,0);
    else fill(255,0,255);
    circle(x,y,d*10);
    ellipse(x,y+d,d*5,d*4);
    fill(0);
    ellipse(x,y-0.5*d,d*2,d);
    circle(x+d*2,y-d*2,0.5*d);
    circle(x-d*2,y-d*2,0.5*d);
  }

  float sign(float v) {
    return v < 0 ? -1 : 1;
  }
}
