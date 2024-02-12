class Spongebob extends Animal {
  Spongebob (int animalX, int animalY) {
    super(animalX, animalY, 40, 40, loadImage("spongebob.jpg"), height - floorH, height, 5);
    velocity.y = 0;
  }

}
