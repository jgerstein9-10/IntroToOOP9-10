int count = 100;
Ball[] balls = new Ball[count];

void setup() {
  size(1600, 1200);
  for (int i = 0; i < 100; i++) {
    balls[i] = new Ball(map(i, 0, count, .25, 20));
  }
}

void draw() {
  background(0);
  for (int i = 0; i < count; i++) {
    balls[i].move();
    balls[i].bounce();
    balls[i].display();
  }
}