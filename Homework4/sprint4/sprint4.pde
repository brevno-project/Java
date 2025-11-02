int N = 5;

Pet[] pets;
ArtemDude[] guys;

void setup() {
  size(800, 600);

  pets = new Pet[N];
  guys = new ArtemDude[N];

  for (int i = 0; i < N; i++) {
    float startX1 = random(width);
    float startY1 = random(height);
    float startD1 = 10;
    int startC1   = 0;
    float startVX1 = random(-6, -3);
    float startVY1 = random(3, 6);
    pets[i] = new Pet(startX1, startY1, startD1, startVX1, startVY1, startC1);

    float startX2 = random(width);
    float startY2 = random(height);
    float startD2 = 10;
    int startC2   = 0;
    float startVX2 = random(-6, -3);
    float startVY2 = random(3, 6);
    guys[i] = new ArtemDude(startX2, startY2, startD2, startVX2, startVY2, startC2);
  }
}

void draw() {
  background(50, 80, 20);

  // moving all
  for (int i = 0; i < N; i++) {
    pets[i].move();
    guys[i].move();
  }

  // drawing all
  for (int i = 0; i < N; i++) {
    pets[i].show();
    guys[i].show();
  }
}
