Player p;

public class Enemy {
  float x, y, speed, size;
  float r;
  int health;
  boolean Alive;
  color Color;
  boolean[] keys = new boolean [5];


  public Enemy(float size1) {
    x = random(width-2*r)+r;
    y = random(width-2*r)+r;
    Color = color(0, 255, 0);
    size = size1;
    health = 3;
    speed = (int) random(2,4);
    Alive = true;
  }

  void update() {
    checkWalls();
    
    if (Alive){{    fill(Color);
    rect(x, y, size, size);

    }}  }
  //if collide then lower health, touch damage
  
  public void CheckCollison(){
  }

  public void checkWalls() {
    r = size;
    if (x < r) {
      x = r;
    }
    if (x > width - r) {
      x = width - r;
    }
    if (y < r) {
      y = r;
    }
    if (y > height - r) {
      y = height - r;
    }
  }
}
