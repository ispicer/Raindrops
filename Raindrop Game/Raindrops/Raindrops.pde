Rain[] r = new Rain[500];
Catcher c;
Intro i;
int oldTime, index, score;
boolean intro;

void setup() {
  size(displayWidth, displayHeight);
  oldTime = 0;
  index = 0;
  score = 0;
  intro = true;
  for (int i = 0; i < r.length; i++) {
    r[i] = new Rain();
  }
  c = new Catcher();
  i = new Intro();
}

void draw() {
  if (intro = true) {
    i.display();
    i.Start();
    i.instructions();
  }
  if (mousePressed && mouseX > width/2 - 500 && mouseX < width/2 - 400 && mouseY < height/2 - 250 && mouseY > height/2 - 150) {
    intro = false;
  }
  if (intro = false) {
    background(100, 200, 255);
    for (int i = 0; i < index; i++) {
      r[i].display();
      r[i].fall();
      r[i].checkCatch(c);
    }
    if (millis()-oldTime >= 500) {
      index++;
      oldTime=millis();
    }
    c.show();
  }
}
