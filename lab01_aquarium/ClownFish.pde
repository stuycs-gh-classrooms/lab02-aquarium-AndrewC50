class ClownFish extends Animal {
  
  ClownFish(int x, int y) {
    super(x, y, 40, 30, loadImage("ClownFish.jpeg"), topTank, height - floorH, 4); 
  }
  
  void move() {
    borderCollide();
    position.x += velocity.x;
    position.y += velocity.y * sin(radians(frameCount));
    //swim();
  }
  
  void swim() {
    position.y+= sin(radians(frameCount));
  }
}
