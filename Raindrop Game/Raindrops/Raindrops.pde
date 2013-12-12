Rain[] r = new Rain[500];
Catcher c;
int oldTime, index;
int score = 0;

void setup() {
  size(displayWidth, displayHeight);
  oldTime = 0;
  index = 0;
  for (int i = 0; i < r.length; i++) {
    r[i] = new Rain();
  }
  c = new Catcher();
}

void draw() {
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

