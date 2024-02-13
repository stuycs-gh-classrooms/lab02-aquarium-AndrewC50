class Tank {
  int tx;
  int ty;
  int tWidth;
  int tHeight;
  int floorHeight;
  //ArrayList<Animal>Animals;
  ArrayList<ClownFish> CFish;
  ArrayList<Crab> Crabs;
  ArrayList<SpongeBob> SpongeBobs;
  ArrayList<Nemo> Nemos;

  Tank(int x, int y, int w, int h, int fh) {
    tx = x;
    ty = y;
    tWidth = w;
    tHeight = h;
    floorHeight = fh;
    //Animals = new ArrayList<Animal>();
    CFish = new ArrayList<ClownFish>();
    Crabs = new ArrayList<Crab>();
    SpongeBobs = new ArrayList<SpongeBob>();
    Nemos = new ArrayList<Nemo>();
  }

  void display() {
    displayTank();
    displayAnimals();
  }

  void displayTank() {
    fill(35, 137, 218);
    rect(0, topTank, width, height);
    fill(246, 215, 176);
    rect(0, height, width, -floorH);
  }

  void displayAnimals() {
    for (ClownFish c : CFish) {
      c.display();
    }
    for (Crab c : Crabs) {
      c.display();
    }
    for (SpongeBob s : SpongeBobs) {
      s.display();
    }
    for (Nemo n : Nemos) {
      n.display();
    }
  }
  void addAnimal(int x, int y) {
    //Animals.add(new Animal(x, y, 30, 40, loadImage("Green.png")));
    addCFish(x, y);
    addCrabs(x, y);
    addSB(x, y);
    addNM(x, y);
  }

  void addCFish(int x, int y) {
    CFish.add(new ClownFish(x, y));
    if (CFish.get(CFish.size() - 1).outOfShape()) {
      CFish.remove(CFish.size() - 1);
    }
  }

  void addCrabs(int x, int y) {
    Crabs.add(new Crab(x, y));
    if (Crabs.get(Crabs.size() - 1).outOfShape()) {
      Crabs.remove(Crabs.size() - 1);
    }
  }
  void addSB(int x, int y) {
    SpongeBobs.add(new SpongeBob(x, y));
    if (SpongeBobs.get(SpongeBobs.size() - 1).outOfShape()) {
      SpongeBobs.remove(SpongeBobs.size() - 1);
    }
  }
  void addNM(int x, int y) {
    Nemos.add(new Nemo(x, y));
    if (Nemos.get(Nemos.size() - 1).outOfShape()) {
      Nemos.remove(Nemos.size() - 1);
    }
  }

  void moveAnimals() {
    for (ClownFish c : CFish) {
      c.move();
    }
    for (Crab c : Crabs) {
      c.move();
    }
    for (SpongeBob s : SpongeBobs) {
      s.move();
    }
    for (Nemo n : Nemos) {
      n.move();
    }
  }
}
