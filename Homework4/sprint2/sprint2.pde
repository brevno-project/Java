Pet pet;
ArtemDude artem;

void setup() {
  size(800, 600);

  float mx  = random(width);
  float my  = random(height);
  float md  = 10;
  float mvx = random(3, 6);
  float mvy = random(3, 6);
  pet = new Pet(mx, my, md, mvx, mvy);

  float cx  = random(width);
  float cy  = random(height);
  float cd  = 5;
  float cvx = random(3, 6);
  float cvy = random(3, 6);
  artem = new ArtemDude(cx, cy, cd, cvx, cvy);
}

void draw() {
  background(50, 80, 20);

  pet.move();
  artem.move();

  pet.show();
  artem.show();
}
