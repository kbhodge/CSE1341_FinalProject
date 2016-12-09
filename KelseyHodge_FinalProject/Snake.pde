

class Snake {
  //members- variables of class

  int x1, y1;

  int bodySize;


  //constructor- intializes the variables or the settnigs of the object that the class creates 
  Snake() {

    x1=300;
    y1=300;
    bodySize= 20;
  }
  //methods- functions 

  void drawSnake() {
    background(0);
    moveSnake();
    fill(255);
    rect(x1, y1, bodySize, bodySize);
  }

  void moveSnake() {

    if (key==CODED)
    {
      if (keyCode==UP)
      {
        y1=y1-2;
      }
      if (keyCode==DOWN)
      {
        y1=y1+2;
      }
      if (keyCode==RIGHT)
      {
        x1=x1+2;
      }
      if (keyCode==LEFT)
      {
        x1=x1-2;
        ;
      }
    }
  }
}