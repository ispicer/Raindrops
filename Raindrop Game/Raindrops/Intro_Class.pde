class Intro {
  PVector loc;
  int d;
  PImage Link;
  PImage Sword;
  PImage Shield;

  Intro() {
    loc = new PVector(width/2, height/2);
    d = 200;
    Link = loadImage("Link.png");
    Sword = loadImage("Master Sword.png");
    Shield = loadImage("Hylian Shield.png");
  }

  void display() {
    textSize(50);
    background(0);
    strokeWeight(10);
    textAlign(CENTER);
    text("Link's Rupee Challenge", width/2, 50);
    imageMode(CENTER);
    image(Link, width/2, height/2, 800, 700);
    fill(10, 120, 39);
  }

  void Start() {
    image(Sword, width/2 - 550, height/2 - 200, 100, 400);
    text("Start", width/2 - 550, height/2 + 50);
  }

  void instructions() {
    image(Shield, width/2 + 500, height/2 - 200, 300, 400);
    text("Instructions", width/2 + 500, height/2 + 50);
  }
}

