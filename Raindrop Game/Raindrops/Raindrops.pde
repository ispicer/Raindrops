Rain[] r = new Rain[500];
Catcher c;
Intro i;
Over o;
int oldTime, index, score;
boolean intro, lose;

void setup() {
  size(displayWidth, displayHeight);
  oldTime = 0;
  index = 0;
  score = 0;
  intro = true;
  lose = false;
  for (int i = 0; i < r.length; i++) {
    r[i] = new Rain();
  }
  c = new Catcher();
  i = new Intro();
  o = new Over();
}

void draw() {
  if (intro == true && lose == false) {
    i.display();
    i.Start();
    i.instructions();
  }
  if (mousePressed && mouseX > width/2 - 600 && mouseX < width/2 - 400 && mouseY < height/2 + 50 && mouseY > height/2 + 10) {
    intro = false;
  }
  if (intro == false && lose == false) {
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
  if (intro == false && lose == true) {
    o.Display();
  }
  if (keyCode == SHIFT) {
    lose = true;
  }
}

