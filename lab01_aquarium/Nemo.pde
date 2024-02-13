class Nemo extends Animal {
  Nemo(int animalX, int animalY) {
    super(animalX, animalY, 40, 20, loadImage("Nemo.jpg"), topTank, height - floorH, 6);
  }
  
  void move() {
    borderCollide();
    position.x += velocity.x * abs(cos(radians(frameCount)));
    position.y += velocity.y * sin(radians(frameCount * 2));
  }
}
