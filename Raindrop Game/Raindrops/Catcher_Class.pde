class Catcher {

  PImage Link;
  PVector loc, vel;
  int d;

  Catcher() {
    Link = loadImage("Link Right.png");
    loc = new PVector(width/2, height - 50);
    vel = new PVector(20, 0);
    d = 50;
  }

  void show() {
    fill(255);
    image(Link, loc.x, loc.y, d, d);
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
