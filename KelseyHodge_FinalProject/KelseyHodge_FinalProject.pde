/*
Kelsey Hodge
Snake Game
*/

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

}