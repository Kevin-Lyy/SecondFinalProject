Enemy e;
public class Player{
  float x= 400;
  float y= 200;
  float speed, size;
  float r;
  int health;
  color Color;
  boolean weapon = false;
  boolean[] keys = new boolean [5];

  public Player(float speed1, float size1) {
    Color = color(0, 0, 255);
    speed = speed1;
    size = size1;
    health = 10;
  }

  void update() {
    checkWalls();

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
  public void checkAttack() {
  }


    void keyP() {
      if (key == 'w') {
        keys[1] = true;
      }
      if (key == 'a') {
        keys[2] = true;
      }
      if (key == 's') {
        keys[3] = true;
      }
      if (key == 'd') {
        keys[4] = true;
      }  
      if (key == 'j') {
        //attack
      }
    }

    void keyR() {
      if (key=='w') {
        keys[1]=false;
      }
      if (key=='a') {
        keys[2]=false;
      }
      if (key=='s') {
        keys[3]=false;
      }
      if (key=='d') {
        keys[4]=false;
      }
      if (key == 'j') {
      }
    }
    public float gethX(){
      return x;
    }
    public float getY(){
      return y;
    }
    
  }
