Player LinkClone;
Enemy enemy;
ArrayList<Enemy> enemiesM; 
PImage bg;


void setup() {
  size(800, 600);
  LinkClone = new Player(400, 300, 5, 20);
  enemy = new Enemy(100, 200, 3, 20);
  bg = loadImage("background.png");
}

void draw() {
  background(bg);
  LinkClone.update();
  enemy.update();
}

void keyPressed() {
  LinkClone.keyP();
  enemy.keyP();
}

void keyReleased() {
  LinkClone.keyR();
  enemy.keyR();
}
