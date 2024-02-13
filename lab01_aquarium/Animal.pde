class Animal {
  PVector velocity;
  PVector position;
  int w, h;
  PImage img;
  int top, bottom;
  int area;
  int health;

  Animal(int x, int y, int w, int h, PImage i, int t, int b, int s) {
    position = new PVector(x, y);
    velocity = new PVector(random(s) - s / 2, random(s) - s / 2);
    img = i;
    this.w = w;
    this.h = h;
    top = t;
    bottom = b;
    area = w * h;
    health = 100;
  }
  
  void display() {
    image(img, position.x, position.y, w, h);
  }

  void move() {
    borderCollide();
    position.x += velocity.x;
    position.y += velocity.y;
  }

   void borderCollide() {
    if (position.x <= 0 || position.x + w >= width) {
      velocity.x *= -1;
    }
    if (position.y <= top || position.y + h >= bottom) {
      velocity.y *= -1;
    }
  }
  
   boolean outOfShape() {
    if((position.x <= 0 || position.x + w >= width || position.y <= top || position.y + h >= bottom)) {
      return true;
    }
    return false;
  }
  
  boolean animalCollide(Animal a) {
    if(this != a && !(position.x > a.position.x + a.w || position.x + w < a.position.x || position.y > a.position.y + a.h || position.y + h < a.position.y)) {
      //println("Collision" + (position.x > a.position.x + a.w) + (position.x + w < a.position.x) +  (position.y > a.position.y + a.h) +  (position.y + h < a.position.y));
      return true;
    }
    return false;
  }
  
  void loseHealth() {
    if(frameCount % 5 == 0) {
      health--;
    }
  }
  
  boolean isDead() {
    if(health <= 0) {
      return true; 
    }
    return false;
  }
}
