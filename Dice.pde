int total;
void setup(){
      noLoop();
      size(250, 350);
      total=0;
  }
  void draw(){
    int i, j, myI, myJ; 
      background(197);
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
  }
  class Die{ //models one single dice cube
      int myX, myY, myDieNum; //member variable declarations
      Die(int x, int y, int dieNum){ //constructor
          myX = x; //variable initializations
          myY = y;
          myDieNum = dieNum;
      }
      void roll(){
        myDieNum =(int)(Math.random()*6)+1;
        total += myDieNum;
      }
      void show(){
        fill((int)(Math.random()*250 + 50), (int)(Math.random()*250 + 50), (int)(Math.random()*250 + 50));
        strokeWeight(2);
        rect(myX, myY, 50, 50, 10);
        fill(0);
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
