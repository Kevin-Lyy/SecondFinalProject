Player LinkClone;
Enemy enemy;

void settings(){
  size(1600,800);
  LinkClone = new Player(700,400,5,20);
  enemy = new Enemy();
}

void draw(){
  background(255);
  LinkClone.update();
  enemy.updateEnemy();
}

void keyPressed(){
  LinkClone.keyP();
}

void keyReleased(){
  LinkClone.keyR();
}
