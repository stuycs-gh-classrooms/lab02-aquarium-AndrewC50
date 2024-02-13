class ClownFish extends Animal {
  
  ClownFish(int x, int y) {
    super(x, y, 30, int(random(20,30)), loadImage("ClownFish.jpeg"), topTank, height - floorH, 4); 
  }
  
  void move() {
    borderCollide();
    position.x += velocity.x;
    position.y += velocity.y * sin(radians(frameCount));
  }
}
