class Tank {
  int tx;
  int ty;
  int tWidth;
  int tHeight;
  int floorHeight;
  //ArrayList<Animal>Animals;
  ArrayList<ClownFish> CFish;
  ArrayList<Crab> Crabs;

  Tank(int x, int y, int w, int h, int fh) {
    tx = x;
    ty = y;
    tWidth = w;
    tHeight = h;
    floorHeight = fh;
    //Animals = new ArrayList<Animal>();
    CFish = new ArrayList<ClownFish>();
    Crabs = new ArrayList<Crab>();
  }

  void display() {
    fill(35, 137, 218);
    rect(0, topTank, width, height);
    fill(246, 215, 176);
    rect(0, height, width, -floorH);
  }

  void addAnimal(int x, int y) {
    //Animals.add(new Animal(x, y, 30, 40, loadImage("Green.png")));
    CFish.add(new ClownFish(x, y));
    Crabs.add(new Crab(x, y));
    SpongeBobs.add(new Crab(x, y));
  }

  void moveAnimals() {
    for (ClownFish c : CFish) {
      c.move();
      c.display();
    }
    for (Crab c : Crabs) {
      c.move();
      c.display();
    }
  }
}
