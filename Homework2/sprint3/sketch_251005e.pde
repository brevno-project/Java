// Sprint 3: Interaction between characters
float x1, y1, x2, y2;
boolean catched = false;

void setup() {
  size(800, 600);
  // Random starting positions
  x1 = random(width);
  y1 = random(height);
  x2 = random(width);
  y2 = random(height);
  textSize(50);
  textAlign(CENTER, CENTER);
}

void draw() {
  background(255, 244, 189);
  pet(x1, y1, 10);
  artem(x2, y2, 5);
  
  // Check if characters are close enough (caught)
  if (dist(x1, y1, x2, y2) < 100) {
    catched = true;
  } else {
    catched = false;
  }
  
  // Display message based on catch status
  if (catched) {
    fill(255, 0, 0);  // Red
    text("catch", width/2, height/2);
  } else {
    fill(0, 255, 0);  // Green
    text("hurry up", width/2, height/2);
  }
}

void mouseDragged() {
  x1 = mouseX; 
  y1 = mouseY;
}

void keyPressed() {
  if (key == 'w' || key == 'W') y2 -= 3;
  else if (key == 'a' || key == 'A') x2 -= 3;
  else if (key == 's' || key == 'S') y2 += 3;
  else if (key == 'd' || key == 'D') x2 += 3;
}

void pet(float x, float y, float d) {
  fill(255, 160, 60);
  circle(x, y, d*10);                   // face
  ellipse(x, y+d, d*5, d*4);             // muzzle
  fill(0);
  ellipse(x, y-0.5*d, d*2, d);           // nose
  circle(x+d*2, y-d*2, 0.5*d);          // right eye
  circle(x-d*2, y-d*2, 0.5*d);          // left eye
}

void artem(float x, float y, float d) {
  fill(255, 220, 180);
  strokeWeight(2);
  triangle(x-15*d, y+20*d, x+15*d, y+20*d, x, y); // body
  fill(255);
  rect(x-5*d, y+9*d, 4*d, 2*d);                   // left eye
  rect(x+1*d, y+9*d, 4*d, 2*d);                   // right eye
  stroke(0);
  line(x+1*d, y+8*d, x+5*d, y+8*d);               // eyebrow right
  line(x-5*d, y+8*d, x-1*d, y+8*d);               // eyebrow left
  fill(40, 150, 180);
  circle(x-2.7*d, y+10*d, 1.4*d);                // pupil left
  circle(x+3.4*d, y+10*d, 1.6*d);                // pupil right
  fill(255);
  ellipse(x, y+16*d, 8*d, 3*d);                   // mouth
  fill(240);
  rect(x-0.5*d, y+14.6*d, 1.5*d, 2*d);            // tooth
}
