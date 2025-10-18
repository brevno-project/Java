void pet(float x,float y, float d, int cFlag){
  if(cFlag == 0)   fill(255, 255, 0);
  else fill(255,0,255);

  
  circle(x,y,d*10);                   // face
  ellipse(x,y+d,d*5,d*4);             // muzzle
  fill(0);
  ellipse(x,y-0.5*d,d*2,d);           // nose
  circle(x+d*2,y-d*2,0.5*d);          // right eye
  circle(x-d*2,y-d*2,0.5*d);          // left eye
}
