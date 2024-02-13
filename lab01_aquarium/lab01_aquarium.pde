Tank t;
int tankX = 0;
int tankY = 50;
int floorH = 100;
int topTank = 100;
int tankW;
int tankH;


void setup() {
  size(600, 600);
  tankW = width;
  tankH = height - 50;
  t = new Tank(tankX, tankY, tankW, tankH, floorH);
  t.display();
}//setup


void draw() {
  background(150);
  t.display();
  t.moveAnimals();
}

void mouseClicked() {
  t.addAnimal(mouseX, mouseY);
}

void keyPressed() {
  if (key == '1') {
    t.addCFish(mouseX, mouseY);
  }
  if (key == '2') {
    t.addCrabs(mouseX, mouseY);
  }
  if (key == '3') {
    t.addSB(mouseX, mouseY);
  }
  if (key == '4') {
    t.addNM(mouseX, mouseY);
  }
}
