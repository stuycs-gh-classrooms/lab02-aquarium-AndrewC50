class Tank {
  int tx;
  int ty;
  int tWidth;
  int tHeight;
  int floorHeight;
  ArrayList<Animal>Animals;
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
    Animals = new ArrayList<Animal>();
    CFish = new ArrayList<ClownFish>();
    Crabs = new ArrayList<Crab>();
    SpongeBobs = new ArrayList<SpongeBob>();
    Nemos = new ArrayList<Nemo>();
  }

  void display() {
    displayTank();
    displayAnimals();
  }

  void moveAnimals() {
    for (int i = Animals.size() - 1; i >= 0; i--) {
      Animals.get(i).move();
      Animals.get(i).loseHealth();
      if(Animals.get(i).isDead()) {
        Animals.remove(i);
      }
    }
  }

  void addAnimal(int x, int y) {
    //Animals.add(new Animal(x, y, 30, 40, loadImage("Green.png")));
    Animals.add(new ClownFish(x, y));
    Animals.add(new Crab(x, y));
    Animals.add(new SpongeBob(x, y));
    Animals.add(new Nemo(x, y));
    removeInvalid();
  }

  void displayTank() {
    fill(35, 137, 218);
    rect(0, topTank, width, height);
    fill(246, 215, 176);
    rect(0, height, width, -floorH);
  }

  void displayAnimals() {
    for (int i = Animals.size() - 1; i >= 0; i--) {
      Animals.get(i).display();
      eat(Animals.get(i));      
    }
  }

  void removeInvalid() {
    int count = Animals.size() - 1;
    while (count >= 0) {
      if (Animals.get(count).outOfShape()) {
        Animals.remove(count);
      }
      count--;
    }
  }

  void eat(Animal a) {
    for (int x = Animals.size() - 1; x >= 0; x--) {
      Animal a1 = Animals.get(x);
      if (a.animalCollide(a1)) {
        if (a.area > a1.area) {
          a.health = 100;
          Animals.remove(x);
        } else {
          a1.health = 100;
          Animals.remove(a);
          break;
        }
      }
    }
  }
}
