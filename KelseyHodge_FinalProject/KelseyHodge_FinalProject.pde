/*
Kelsey Hodge
 Snake Game
 */

int dir=0;
boolean move;

Snake snake1 = new Snake();
boolean gameover = false;
int xapple, yapple;
int w = 20, h = 20, bs = 30, score=0;
void setup() {
  size(600, 600);
  background(0);
  move = false;
  xapple=12; 
  yapple=10;
}

void endGame() {
  if (snake1.x.get(0)>width/bs||snake1.x.get(0)<0||snake1.y.get(0)>height/bs||snake1.y.get(0)<0) {
    gameover=true;
    textSize(30);
    fill(255, 0, 0);
    text("GAME OVER", width/3, height/2);
  }
}

void restartGame() {
  if (gameover) {
    textSize(30);
    fill(255, 0, 0);
    text("Press space to restart!", width/4, height/4);
    if (keyPressed&&key==' ') {
      snake1.x.clear();
      snake1.y.clear();
      snake1.x.add(5);
      snake1.y.add(5);
      gameover=false;
      score=0;
    }
  }
}

void drawApple() {
  xapple =(int)random(0, w);
  yapple =(int)random(0, h);
}


void draw() {
  background(255);
  for (int i=0; i<w; i++) 
    line(i*bs, 0, i*bs, height);
  for (int i=0; i<h; i++)  
    line(0, i*bs, width, i*bs);   
  snake1.drawSnake();

  if (frameCount%6==0) {
    move=snake1.moveSnake(dir, xapple, yapple);
  }
  if (move) {
    drawApple();
  }
  fill(255, 0, 0);
  rect(xapple*bs, yapple*bs, 30, 30);


  endGame();
  println(score);
  restartGame();
}
void keyPressed() {
  if (key==CODED)
  {
    if (keyCode==UP)
    {
      dir = 1;
    }
    if (keyCode==DOWN)
    {
      dir=0;
    }
    if (keyCode==RIGHT)
    {
      dir=2;
    }
    if (keyCode==LEFT)
    {
      dir=3;
    }
  }
}