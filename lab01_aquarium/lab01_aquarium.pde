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

//will only add a fish if it's in the right place
void keyPressed() {
  if (key == '1') {
    t.Animals.add(new ClownFish(mouseX, mouseY));
  }
  if (key == '2') {
    t.Animals.add(new Nemo(mouseX, mouseY));
  }
  if (key == '3') {
    t.Animals.add(new SpongeBob(mouseX, mouseY));
  }
  if (key == '4') {
    t.Animals.add(new Crab(mouseX, mouseY));
  }
  t.removeInvalid();
}
