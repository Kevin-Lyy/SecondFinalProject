Player LinkClone;
Enemy enemy;
ArrayList<Enemy> enemiesM; 
PImage bg;


void setup() {
  size(800, 600);
  bg = loadImage("background.png");
  LinkClone = new Player(5, 20);
 // enemy = new Enemy(100, 200, 20);
 enemiesM = new ArrayList<Enemy>();
 for(int i = 0; i < 4; i++){
   enemiesM.add(new Enemy(20));
 }
  
}

void draw() {
  background(bg);
  fill(0);
  LinkClone.update();
  for(Enemy e:enemiesM){
    e.update();
  }
}

void keyPressed() {
  LinkClone.keyP();

}

void keyReleased() {
  LinkClone.keyR();
}
