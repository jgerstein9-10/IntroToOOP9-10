class Ball {
  //declaring all information (fields) contained within the Ball class
  PVector loc, vel;
  int diam;
  color c;
  float speed;

  //this is a constructor. you can have more than one constructor for a given class
  Ball() {
    diam = 200;
    loc = new PVector(random(diam, width-diam), random(diam, height-diam));
    vel = PVector.random2D();
    c = color(random(255), random(50), random(100, 255));
    println("I just initialized a new object of the Ball class!");
    speed = 1;
  }

  //this is a second constructor
  Ball(float tSpeed) {
    diam = 200;
    speed = tSpeed;
    loc = new PVector(random(diam, width-diam), random(diam, height-diam));
    vel = PVector.random2D();
    vel.mult(speed);
    c = color(random(255), random(50), random(100, 255));
    println("I just initialized a new object of the Ball class!");
  }

  //after declaring fields and setting up constructors, you can define your methods
  void display() {
    fill(c);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }

  void move() {
    loc.add(vel);    //add velocity to location
  }

  void bounce() {
    if (loc.x > width || loc.x < 0) {
      vel.x *= -1;
    }
    if (loc.y > height || loc.y < 0) {
      vel.y *= -1;
    }
  }
}