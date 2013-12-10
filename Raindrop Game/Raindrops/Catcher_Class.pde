class Catcher {

  PVector loc, vel;
  int d;

  void setup() {
    loc = new PVector(width/2, height);
    vel = new PVector(3, 0);
    d = 100;
  }

  void show() {
    fill(255);
    ellipse(loc.x, loc.y, d, d);
     if (keyPressed) {
      if (key == CODED) {
        if (keyCode == LEFT) {
          loc.add(vel);
        }
        if (keyCode == RIGHT) {
          loc.sub(vel);
        }
      }
    }
  }
}
