class ArtemDude {
  float x, y, d, vx, vy;
  int cFlag;

  ArtemDude(float sx, float sy, float sd, float svx, float svy, int sc) {
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
    if (cFlag == 0) fill(255);
    else fill(120);
    strokeWeight(2);
    triangle(x-15*d,y+20*d,x+15*d,y+20*d,x,y);
    fill(255);
    rect(x-5*d,y+9*d,4*d,2*d);
    rect(x+1*d,y+9*d,4*d,2*d);
    stroke(0);
    line(x+1*d,y+8*d,x+5*d,y+8*d);
    line(x-5*d,y+8*d,x-1*d,y+8*d);
    fill(40,150,180);
    circle(x-2.7*d,y+10*d,1.4*d);
    circle(x+3.4*d,y+10*d,1.6*d);
    fill(255);
    ellipse(x,y+16*d,8*d,3*d);
    fill(240);
    rect(x-0.5*d,y+14.6*d,1.5*d,2*d);
  }

  float sign(float v) {
    return v < 0 ? -1 : 1;
  }
}
