/*
Kelsey Hodge
Snake Game
*/
ArrayList<Integer> x = new ArrayList<Integer>(), y = new ArrayList<Integer>();
int w = 20, h = 20, bs = 30, dir = 2, xapple = 12, yapple = 10;
int[] dx = {0, 0, 1, -1}, dy = {1, -1, 0, 0};
boolean gameover=false;

void setup(){
  size(600,600);
  background(255);
  
}

void draw(){
  for(int i=0; i<width; i+=20){
   line(i,0,i,height);
 }
 for(int w=0; w<height; w+=20){
   line(0,w,width,w);
 }
 
void keyPressed()
{
  if(key==CODED)
  {
    if(keyCode==UP)
    {
  dir=1;
    }
    if(keyCode==DOWN)
    {
  dir=0;
    }
    if(keyCode==RIGHT)
    {
  dir=2;
    }
    if(keyCode==LEFT)
    {
  dir=3;
    }
  }
}