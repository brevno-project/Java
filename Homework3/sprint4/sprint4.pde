float []mx,my,md,mvx,mvy; // pet
int []mc;
float []cx,cy,cd,cvx,cvy;// artem
int []cc;
int N=5;

void setup() {
  size(800, 600);
  mx = new float[N];
  my = new float[N];
  mvx = new float[N];
  mvy = new float[N];
  md = new float[N]; mc=new int[N];
  cx = new float[N];
  cy = new float[N];
  cd = new float[N]; cc=new int[N];
  cvx = new float[N];
  cvy = new float[N];
  initialize(mx, my, mvx, mvy, md, mc);
  initialize(cx, cy, cvx, cvy, cd, cc);
}

void draw() {
  background(50,80,20);
  moveObject(mx, my, mvx, mvy, md, mc);
  moveObject(cx, cy, cvx, cvy, cd, cc);
  for (int i=0; i<N; i++) {
    pet(mx[i], my[i], md[i], mc[i]);
    artem(cx[i], cy[i], cd[i], cc[i]);
  }
}
