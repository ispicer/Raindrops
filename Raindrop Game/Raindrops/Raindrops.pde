Rain[] r = new Rain[500];
int oldTime, index;

void setup() {
  size(displayWidth, displayHeight);
  oldTime = 0;
  index = 0;
  for (int i = 0; i < r.length; i++) {
    r[i] = new Rain();
  }
}

void draw() {
  background(100, 200, 255);
  for (int i = 0; i < index; i++) {
    r[i].display();
    r[i].fall();
  } 
  if (millis()-oldTime >= 500) {
    index++;
    oldTime=millis();
  }
}
