int N = 5;
float SPEED_MIN = 2;
float SPEED_MAX = 9;

Pet[] pets;
ArtemDude[] guys;

void setup() {
  size(800, 600);
  pets = new Pet[N];
  guys = new ArtemDude[N];

  for (int i = 0; i < N; i++) {
    float x1 = random(width);
    float y1 = random(height);
    float d1 = 10;
    int c1 = 0;
    float vx1 = random(-6, -3);
    float vy1 = random(3, 6);
    pets[i] = new Pet(x1, y1, d1, vx1, vy1, c1);

    float x2 = random(width);
    float y2 = random(height);
    float d2 = 10;
    int c2 = 0;
    float vx2 = random(-6, -3);
    float vy2 = random(3, 6);
    guys[i] = new ArtemDude(x2, y2, d2, vx2, vy2, c2);
  }
}

void draw() {
  background(50,80,20);
  for (int i = 0; i < N; i++) {
    pets[i].move();
    guys[i].move();
  }
  for (int i = 0; i < N; i++) {
    pets[i].show();
    guys[i].show();
  }
}
