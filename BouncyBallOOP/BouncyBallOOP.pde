Ball b;                //declare a new ball called b
Ball c;

void setup() {
  size(1600, 1200);
  b = new Ball(10);      //initialize b as a new object of the Ball class
  c = new Ball(.5);
}

void draw() {
  background(0);
  b.move();            //call b's move() method
  c.move();
  b.display();         //call b's display() method
  c.display();
  b.bounce();
  c.bounce();
}