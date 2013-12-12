class Rain {
  PVector loc, vel, acc;
  int d;
  int checkCatch;

  Rain() {
    loc = new PVector(random(width), 0);
    vel = new PVector(0, 1);
    acc = new PVector(1, .25);
    d = 5;
  }

  void display() {
    fill(random(255), random(255), random(255));
    ellipse(loc.x, loc.y, d, d);
  }

  void fall() {
    loc.add(vel);
  }

  void acc() {
    vel.add(acc);
    if (loc.x == loc.x + 10 || loc.x == loc.x - 10) {
      acc.x *= -acc.x;
    }
  }
  void checkCatch(Catcher c) {
    if (loc.dist(c.loc) < d/2 + c.d/2) {
      loc.x = random(width + 10, width + 1000);
    }
  }
}
