float mx,my,md,mvx,mvy; // pet
float cx,cy,cd,cvx,cvy; // artem
// artem
void setup() {
  size(800, 600);
mx = random(width);
  my = random(height);
  mvx = random(3,6);
  mvy = random(3,6);
  md = 10;
  cx = random(width);
  cy = random(height);
   cd = 5;
  cvx = random(3,6);
  cvy = random(3,6);
   background(255,244,189);
  pet(mx, my, md);
  artem(cx, cy, cd);
}
void draw(){
  background(50,80,20);
  moveMouse();
  moveCheese();
  pet(mx,my,md);
  artem(cx,cy,cd);  
}

void pet(float x,float y, float d){
  fill(255,160,60);
  circle(x,y,d*10);                   // face
  ellipse(x,y+d,d*5,d*4);             // muzzle
  fill(0);
  ellipse(x,y-0.5*d,d*2,d);           // nose
  circle(x+d*2,y-d*2,0.5*d);          // right eye
  circle(x-d*2,y-d*2,0.5*d);          // left eye
}

void artem(float x, float y, float d){
  fill(255,220,180);
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
void moveMouse(){
  mx += mvx;
  my += mvy;
  if(mx>width-50 || mx<50) mvx = -mvx;
  if(my>height-50 || my<50) mvy = -mvy;
}
void moveCheese(){
  cx += cvx;
  cy += cvy;
  if(cx>width-50 || cx<50) cvx = -cvx;
  if(cy>height-50 || cy<50) cvy = -cvy;
}
