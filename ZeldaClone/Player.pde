public class Player{
 int x,y,speed,size;
 int r;
 int health = 10;
 color heroColor;
 boolean weapon = false;
 boolean[] keys = new boolean [5];
  
  public Player(int x1, int y1, int speed1, int size1){
    x = x1;
    y = y1;
    heroColor = color(0,255,0);
    speed = speed1;
    size = size1;
  }
  
  void update(){
    checkWalls();
    if (keys[1] == true){
      y = y - speed;
    }
    if (keys[2] == true){
      x = x - speed;
    }
    if (keys[3] == true){
      y = y + speed;
    }
    if (keys[4] == true){
      x = x + speed;
    }
    fill(heroColor);
    rect(x,y,size,size);
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

  
  void keyP(){
    if (key == 'w'){
      keys[1] = true;
    }
     if (key == 'a'){
      keys[2] = true;
    }
     if (key == 's'){
      keys[3] = true;
    }
     if (key == 'd'){
      keys[4] = true;
    }  
    if(key == 'j'){
      //attack
    }
  }
  
  void keyR(){
    if(key=='w'){
    keys[1]=false;
    }
    if(key=='a'){
    keys[2]=false;
    }
    if(key=='s'){
    keys[3]=false;
    }
    if(key=='d'){
    keys[4]=false;
    }
    if(key == 'j'){
      
    }
   }
}
