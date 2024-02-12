class Animal {
  PVector velocity;
  PVector position;
  int w, h;
  PImage img;
  int top, bottom;

  Animal(int x, int y, int w, int h, PImage i, int t, int b, int s) {
    position = new PVector(x, y);
    velocity = new PVector(random(s) - s / 2, random(s) - s / 2);
    img = i;
    this.w = w;
    this.h = h;
    top = t;
    bottom = b;
    orient();
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
  
  void orient() {
    if((position.x <= 0 || position.x + w >= width || position.y <= top || position.y + h >= bottom)) {
      velocity.y = -(abs(velocity.y));
    }
  }
}
