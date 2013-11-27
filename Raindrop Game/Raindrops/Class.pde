class Raindrops {

  PVector loc, vel, acc;
  int d;

  void setup() {
    loc = new PVector(random(width), 0);
    vel = new PVector(random(1, 2), 1);
    acc = new PVector(1, 1.5);
    d = 10;
  }

  void rain() {
    fill(0, 255, 0);
    ellipse(loc.x, loc.y, d, d);
  }
  
  void fall() {
    loc.add(vel);
