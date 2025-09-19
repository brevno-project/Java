void artem(float x, float y, float d) {
  fill(255, 220, 180);
  strokeWeight(2);
  // body (triangle)
  triangle(x - 15*d, y + 20*d, x + 15*d, y + 20*d, x, y);
  // eyes (rectangles)
  fill(255);
  rect(x - 5*d, y + 9*d, 4*d, 2*d);
  rect(x + 1*d, y + 9*d, 4*d, 2*d);
  // eyebrows (lines)
  stroke(0);
  line(x + 1*d, y + 8*d, x + 5*d, y + 8*d);
  line(x - 5*d, y + 8*d, x - 1*d, y + 8*d);
  // pupils
  fill(40, 150, 180);
  circle(x - 2.7*d, y + 10*d, 1.4*d);
  circle(x + 3.4*d, y + 10*d, 1.6*d);
  // mouth
  fill(255);
  ellipse(x, y + 16*d, 8*d, 3*d);
  // tooth
  fill(240);
  rect(x - 0.5*d, y + 14.6*d, 1.5*d, 2*d);
}
