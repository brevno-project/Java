void artem(float x, float y, float d,int cFlag){
  if(cFlag == 0) fill(255);  else fill(120); 
  
  strokeWeight(2);
  triangle(x-15*d,y+20*d, x+15*d,y+20*d, x,y); // body
  fill(255);
  rect(x-5*d,y+9*d,4*d,2*d);                   // left eye
  rect(x+1*d,y+9*d,4*d,2*d);                   // right eye
  stroke(0);
  line(x+1*d,y+8*d,x+5*d,y+8*d);               // eyebrow right
  line(x-5*d,y+8*d,x-1*d,y+8*d);               // eyebrow left
  fill(40,150,180);
  circle(x-2.7*d,y+10*d,1.4*d);                // pupil left
  circle(x+3.4*d,y+10*d,1.6*d);                // pupil right
  fill(255);
  ellipse(x,y+16*d,8*d,3*d);                   // mouth
  fill(240);
  rect(x-0.5*d,y+14.6*d,1.5*d,2*d);            // tooth
}
