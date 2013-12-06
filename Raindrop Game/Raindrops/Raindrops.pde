Rain[] r = new Rain[100];

void setup() {
  size(500, 500);
  for (int i = 0; i < r.length; i++) {
    r[i] = new Rain();
  }
}

void draw() {
  background(100, 200, 255);
  for (int i = 0; i < r.length; i++) {
    r[i].display();
    r[i].fall();
  }
}
