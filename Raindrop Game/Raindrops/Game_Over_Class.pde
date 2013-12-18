class Over {

  PVector gan, vel;
  PImage Ganondorf;
  PImage Link;

  Over() {
    gan = new PVector(width/2 + 400, height/2 + 200);
    lin = new PVector(width/2, height);
    Ganondorf = loadImage("Ganondorf Game Over.png");
    Link = loadImage("Game Over Link.png");
  }

  void Display() {
    background(0); 
    image(Ganondorf, gan.x, gan.y);
    image(Link, 
  }
}

