int total;
int r = 255;
int g = 255;
int b = 255;
void setup(){
      noLoop();
      size(250, 350);
      total=0;
  }
  void draw(){
    int i, j, myI, myJ; 
      background(218, 222, 227);
      for(i=0;i<3;i++){
        for(j=0;j<3;j++){
          myI = (90 * i) + 10;
          myJ = (90 * j) + 10;
          Die one = new Die(myI, myJ, 0);
          one.roll();
          one.show();
        }
      } 
     textSize(15);
      text("The total number of dots is: " + total,10,300);
  }
  void mousePressed(){
      total = 0;
      redraw();
      r=(int)(Math.random()*150 + 50);
      g=(int)(Math.random()*150 + 50);
      b=(int)(Math.random()*150 + 50);
  }
  class Die{ 
      int myX, myY, myDieNum; 
      Die(int x, int y, int dieNum){ 
          myX = x; 
          myY = y;
          myDieNum = dieNum;
      }
      void roll(){
        myDieNum =(int)(Math.random()*6)+1;
        total += myDieNum;
      }
      void show(){
        fill(r,g,b);
        strokeWeight(2);
        stroke(r-150,g-150,b-150);
        rect(myX, myY, 50, 50, 10);
        fill(r-150,g-150,b-150);
    if (myDieNum == 1) {
      ellipse(myX+25, myY+25, 10, 10);
    }
    else if (myDieNum == 2) {
      ellipse(myX+25, myY+15, 10, 10);
      ellipse(myX+25, myY+35, 10, 10);
    }
    else if (myDieNum == 3) {
      ellipse(myX+15, myY+15, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
      ellipse(myX+35, myY+35, 10, 10);
    }
    else if (myDieNum == 4) {
      ellipse(myX+15, myY+15, 10, 10);
      ellipse(myX+35, myY+15, 10, 10);
      ellipse(myX+15, myY+35, 10, 10);
      ellipse(myX+35, myY+35, 10, 10);
    }
    else if (myDieNum == 5) {
      ellipse(myX+15, myY+15, 10, 10);
      ellipse(myX+35, myY+15, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
      ellipse(myX+15, myY+35, 10, 10);
      ellipse(myX+35, myY+35, 10, 10);
    }
    else if (myDieNum == 6) {
      ellipse(myX+15, myY+12, 10, 10);
      ellipse(myX+15, myY+25, 10, 10);
      ellipse(myX+15, myY+38, 10, 10);
      ellipse(myX+35, myY+12, 10, 10);
      ellipse(myX+35, myY+25, 10, 10);
      ellipse(myX+35, myY+38, 10, 10);
    }
     }
  }
