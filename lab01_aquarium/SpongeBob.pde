// added class from group
class SpongeBob extends Animal {
  SpongeBob (int animalX, int animalY) {
    super(animalX, animalY, 40, 40, loadImage("SpongeBob.jpg"), height - floorH, height, 5);
    velocity.y = 0;
  }
 void move() {
   position.x += velocity.x;
   borderCollide();
 }
}
