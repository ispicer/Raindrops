class Intro {
  PVector loc;
  int d;

  Intro() {
    loc = new PVector(width/2, height/2);
    d = 200;
  }

  void display() {
    textSize(50);
    strokeWeight(10);
    text("Rainbow Rain", width/2 - 150, 50);
    fill(0, 0, 255);
    ellipse(loc.x, loc.y, d, d);
  }
}

