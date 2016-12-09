/*
Kelsey Hodge
 Snake Game
 */
Snake snake1 = new Snake();
boolean gameover = false;
int xapple, yapple;
void setup() {
  size(600, 600);
  background(0);
}

void startGame() {
  if (key == ' ') {
    snake1.x1=snake1.x1+2;
  }
}

void endGame() {
  if (snake1.x1>width||snake1.y1>height||snake1.x1<(width-width)||snake1.y1<(height%height)) {
    gameover=true;
    textSize(30);
    fill(255);
    text("GAME OVER", width/3, height/2);
  }
}

void drawApple(){
  if(!gameover){
  xapple =10;
  yapple=12;
  fill(255,0,0);
  rect(xapple*snake1.bodySize,yapple*snake1.bodySize,snake1.bodySize,snake1.bodySize);
  }
}


void draw() {
  //background(0);
  startGame(); 
  snake1.drawSnake();
  snake1.moveSnake();
  drawApple();
  endGame();
}