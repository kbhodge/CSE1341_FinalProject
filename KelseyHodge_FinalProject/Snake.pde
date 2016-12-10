/* Kelsey Hodge
Snake Game Class*/

class Snake {
  ArrayList<Integer> x = new ArrayList<Integer>(), y = new ArrayList<Integer>();
  int w = 20, h = 20, bs = 30, score=0;
  int[] dx = {0, 0, 1, -1}, dy = {1, -1, 0, 0};
  int x1, y1;
  int bodySize;


  Snake() {
    x1=300;
    y1=300;
    bodySize= 30;
    x.add(1);
    y.add(1);
  }

  void drawSnake() {
    fill(0);
    for (int i=0; i<x.size(); i++) {
      fill(0, 255, 0);
      rect(x.get(i)*bs, y.get(i)*bs, bs, bs);
      fill(0, 0, 255);
      textSize(20);
      text(score, 30, bs);
    }
  }

  boolean moveSnake(int dir, int xapple, int yapple) {
    x.add(0, x.get(0)+dx[dir]);
    y.add(0, y.get(0)+dy[dir]);

    if (x.get(0)==xapple&&y.get(0)==yapple) {
      score++;
      return true;
    } else {
      x.remove(x.size()-1);
      y.remove(y.size()-1);
      return false;
    }
  }
}