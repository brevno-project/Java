boolean catched = false;
boolean wasCaught = false;  // Flag to track if already caught
int timer = 0;
int score = 0;  // Score counter

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
  timer++;
  background(255, 244, 189);
  pet(x1, y1, 10);
  artem(x2, y2, 5);
  
  // Check distance and update catch status
  if (dist(x1, y1, x2, y2) < 100) {
    catched = true;
    if (!wasCaught) {  // If just caught, increase score once
      score++;
      wasCaught = true;
    }
  } else {
    catched = false;
    wasCaught = false;  // Reset flag when not caught
  }
  
  // Display score in top left corner
  fill(0);
  textSize(30);
  textAlign(LEFT, TOP);
  text("Score: " + score, 20, 20);
  
  // Reset text settings for center text
  textSize(50);
  textAlign(CENTER, CENTER);
  
  // Display message based on catch status
  if (catched) {
    fill(255, 0, 0);  // Red
    text("catch", width/2, height/2);
  } else {
    fill(0, 255, 0);  // Green
    text("hurry up", width/2, height/2);
  }
  
  // Display character name at bottom based on time
  fill(0, 0, 255);  // Blue
  if (timer < 5*frameRate) {
    text("bear", 100, height-50);
  } else if (timer < 10*frameRate) {
    text("robot", 100, height-50);
  } else {
    timer = 0;  // Reset timer after 10 seconds
  }
}

void mouseDragged() {
  // Only move bear during first 5 seconds
  if (timer < 5*frameRate) {
    float speed = 0.005;  // Bear movement speed (adjustable: 0.01-1.0)
    x1 += (mouseX - x1) * speed;
    y1 += (mouseY - y1) * speed;
  }
}

void keyPressed() {
  // Only move robot during seconds 5-10
  if (timer >= 5*frameRate && timer < 10*frameRate) {
    float robotSpeed = 10;  // Robot movement speed (adjustable)
    if (key == 'w' || key == 'W') y2 -= robotSpeed;  // Move up
    else if (key == 'a' || key == 'A') x2 -= robotSpeed;  // Move left
    else if (key == 's' || key == 'S') y2 += robotSpeed;  // Move down
    else if (key == 'd' || key == 'D') x2 += robotSpeed;  // Move right
  }
}

void pet(float x, float y, float d) {  // Bear character
  fill(255, 160, 60);
  circle(x, y, d*10);                   // face
  ellipse(x, y+d, d*5, d*4);             // muzzle
  fill(0);
  ellipse(x, y-0.5*d, d*2, d);           // nose
  circle(x+d*2, y-d*2, 0.5*d);          // right eye
  circle(x-d*2, y-d*2, 0.5*d);          // left eye
}

void artem(float x, float y, float d) {  // Robot character
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
