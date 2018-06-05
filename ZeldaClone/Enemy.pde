public class Enemy {
  float x, xspeed, xacc;
  float y, yspeed, yacc;
  float r;
  color enemyColor;
  int size;

  public Enemy() {
    x = 800;
    y = 300;
    enemyColor = color(0);
    xspeed= 2;
    yspeed= 2;
  }

  public Enemy(int count) {
    for (int i = 0; i < count; i++) {
      x = random(width-2*r)+r;
      y = random(height-2*r)+r;
      enemyColor = color(0);
      xspeed= random(1)-1;
      yspeed= random(1)-1;
    }
  }

  public void updateEnemy() {
    checkWalls();
    x+= xspeed;
    y+= yspeed;
    yspeed += yacc;
    xspeed += xacc;
    fill(enemyColor);
    rect(300, 200, 20, 20);
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
}
