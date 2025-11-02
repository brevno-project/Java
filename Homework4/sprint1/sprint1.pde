Pet pet;
ArtemDude artem;

void setup() {
  size(800, 600);

  float mx = random(width);
  float my = random(height);
  float md = 10;

  float cx = random(width);
  float cy = random(height);
  float cd = 5;

  pet = new Pet(mx, my, md);
  artem = new ArtemDude(cx, cy, cd);

  background(255, 244, 189);
}

void draw() {
  background(255, 244, 189);

  pet.show();
  artem.show();
}
