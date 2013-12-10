class Catcher {

  PVector loc, vel;
  int d;

  Catcher() {
    loc = new PVector(width/2, height);
    vel = new PVector(10, 0);
    d = 100;
  }

  void show() {
    fill(255);
    ellipse(loc.x, loc.y, d, d);
     if (keyPressed) {
      if (key == CODED) {
        if (keyCode == LEFT) {
          loc.sub(vel);
        }
        if (keyCode == RIGHT) {
          loc.add(vel);
        }
      }
    }
  }
}
