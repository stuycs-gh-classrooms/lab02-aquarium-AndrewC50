// added class from group, kept movement but moved variables to fit animal constructor
class Nemo extends Animal {
  Nemo(int animalX, int animalY) {
    super(animalX, animalY, int(random(20, 40)), int(random(10,20)), loadImage("Nemo.jpg"), topTank, height - floorH, 6);
  }
  
  void move() {
    borderCollide();
    position.x += velocity.x * abs(cos(radians(frameCount)));
    position.y += velocity.y * sin(radians(frameCount * 2));
  }
}
