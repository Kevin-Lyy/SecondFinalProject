Player p;
public class Enemy extends entity {
  float x, y, speed, size;
  float r;
  int health;
  color Color;
  boolean[] keys = new boolean [5];


  public Enemy(float x1, float y1, float speed1, float size1) {
    x = x1;
    y = y1;
    Color = color(0, 255, 0);
    speed = speed1;
    size = size1;
    health = 3;
  }

  void update() {
    checkWalls();
    checkCollison(p);
    checkAttack();
    if (keys[1] == true) {
      y = y - speed;
    }
    if (keys[2] == true) {
      x = x - speed;
    }
    if (keys[3] == true) {
      y = y + speed;
    }
    if (keys[4] == true) {
      x = x + speed;
    }
    fill(Color);
    rect(x, y, size, size);
  }

  public void checkWalls() {
    r = size/2;
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
  public void checkCollison(final entity e) {
    if (this == p) {
      System.out.print("no");
    }
  }
  public void checkAttack() {
  }


  void keyP() {
    if (key == 's') {
      keys[1] = true;
    }
    if (key == 'd') {
      keys[2] = true;
    }
    if (key == 'w') {
      keys[3] = true;
    }
    if (key == 'a') {
      keys[4] = true;
    }  
    if (key == 'j') {
      //attack
    }
  }

  void keyR() {
    if (key=='s') {
      keys[1]=false;
    }
    if (key=='d') {
      keys[2]=false;
    }
    if (key=='w') {
      keys[3]=false;
    }
    if (key=='a') {
      keys[4]=false;
    }
    if (key == 'j') {
    }
  }
}
