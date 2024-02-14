// added class from group, kept movement but moved variables to fit animal constructor
class SpongeBob extends Animal {
  SpongeBob (int animalX, int animalY) {
    super(animalX, animalY, int(random(10,40)), int(random(10, 40)), loadImage("SpongeBob.jpg"), height - floorH, height, 5);
    velocity.y = 0;
  }
 void move() {
   borderCollide();
   position.x += velocity.x;
   
 }
 
 // dies if hits the wall twice unless eats
 void loseHealth() {
   if(frameCount % 6 == 0) {
     health--;
   }
   w = health / 2;
   h = health / 3;
 }
}
