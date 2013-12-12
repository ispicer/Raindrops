////class Rain {
////  PVector loc, vel, acc;
////  int d;
////
////  Rain() {
////    loc = new PVector(random(width), 0);
////    vel = new PVector(0, 1);
////    acc = new PVector(1, .25);
////    d = 5;
////  }
////
////  void display() {
////    fill(0, 0, 255);
////    ellipse(loc.x, loc.y, d, d);
////  }
////
////  void fall() {
////    loc.add(vel);
////  }
////
////  void acc() {
////    vel.add(acc);
////    if (loc.x == loc.x + 10 || loc.x == loc.x - 10) {
////      acc.x *= -acc.x;
////    }
////  }
////}
//
////class Catcher {
////
////  PVector loc, vel;
////  int d;
////
////  void setup() {
////    loc = new PVector(width/2, height);
////    vel = new PVector(3);
////    d = 100;
////  }
////
////  void show() {
////    fill(255);
////    ellipse(loc.x, loc.y, d, d);
////  }
////
////  void move() {
////    if (keyPressed) {
////      if key == CODED) {
////        if (keyCode == LEFT) {
////          loc.add(vel);
////        }
////        if (keyCode == RIGHT) {
////          loc.sub(vel);
////        }
////      }
////    }
////  }
////}

