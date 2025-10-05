// positions, sizes and speeds
float x1,y1,d1,vx1,vy1;
float x2,y2,d2,vx2,vy2;

void setup() {
  size(1000, 800);

  // Artem
  x1 = 350; y1 = 300; d1 = 10;
  vx1 = 2; vy1 = 3;

  // Pet
  x2 = 100; y2 = 100; d2 = 10;
  vx2 = 3; vy2 = 4;
}

void artem(float x, float y, float d) {
  fill(255, 220, 180);
  strokeWeight(2);

  // body
  triangle(x-15*d, y+20*d, x+15*d, y+20*d, x, y);

  // eyes
  fill(255);
  rect(x-5*d, y+9*d, 4*d, 2*d);
  rect(x+1*d, y+9*d, 4*d, 2*d);

  // eyebrows
  stroke(0);
  line(x+1*d, y+8*d, x+5*d, y+8*d);
  line(x-5*d, y+8*d, x-1*d, y+8*d);

  // pupils
  fill(40, 150, 180);
  circle(x-2.7*d, y+10*d, 1.4*d);
  circle(x+3.4*d, y+10*d, 1.6*d);

  // mouth
  fill(255);
  ellipse(x, y+16*d, 8*d, 3*d);

  // tooth
  fill(240);
  rect(x-0.5*d, y+14.6*d, 1.5*d, 2*d);
}

void pet(float x,float y, float d) {
  fill(255, 160, 60);
  circle(x,y,d*10);              // face
  ellipse(x,y+d,d*5,d*4);        // muzzle
  fill(0);
  ellipse(x,y-0.5*d,d*2,d);      // nose
  circle(x+d*2,y-d*2,0.5*d);     // right eye
  circle(x-d*2,y-d*2,0.5*d);     // left eye
}

void draw() {
  background(50);

  // Artem move
  artem(x1,y1,d1);
  x1 += vx1; 
  y1 += vy1;
  if (x1-15*d1 < 0 || x1+15*d1 > width) vx1 = -vx1;
  if (y1 < 0 || y1+20*d1 > height) vy1 = -vy1;

  // Pet move
  pet(x2,y2,d2);
  x2 += vx2;
  y2 += vy2;
  if (x2-5*d2 < 0 || x2+5*d2 > width) vx2 = -vx2;
  if (y2-5*d2 < 0 || y2+5*d2 > height) vy2 = -vy2;

  // collision
  float cx1 = x1;
  float cy1 = y1 + 10*d1;
  float distance = dist(cx1, cy1, x2, y2);
  float radius1 = 11*d1;
  float radius2 = 5*d2;

  if (distance < radius1 + radius2 + 2) {
    float dx = (x2 - x1) / distance;
    float dy = (y2 - y1) / distance;
    float push = 2.5;
    vx1 -= dx * push;
    vy1 -= dy * push;
    vx2 += dx * push;
    vy2 += dy * push;
  }
}
