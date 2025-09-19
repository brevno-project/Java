void setup() {
  size(600, 400);

  // three calls of the function pet with different x, y, d
  pet(100, 100, 5);   // small
  pet(300, 200, 10);  // medium
  pet(500, 250, 15);  // large
}

void pet(float x, float y, float d) {
  fill(255, 160, 60);
  circle(x, y, d*10);          // face
  ellipse(x, y+d, d*5, d*4);   // muzzle
  
  fill(0);
  ellipse(x, y-0.5*d, d*2, d); // nose
  circle(x+d*2, y-d*2, 0.5*d); // right eye
  circle(x-d*2, y-d*2, 0.5*d); // left eye
}
