void setup()
{
  size(400, 400);
  noLoop();
}
void draw()
{
  background(248, 250, 177);
  int sum = 0;
  int ones = 0;
  int twos = 0;
  int threes = 0;
  int fours = 0;
  int fives = 0;
  int sixes = 0;
  for(int y = 25; y < 300; y = y+70)
  {
    for(int x = 25; x < 400; x = x+75)
    {
      Die dice = new Die(x, y);
      dice.show();
      sum = sum + dice.numDots;
      if(dice.numDots == 1){
        ones++;
      }
      if(dice.numDots == 2){
        twos++;
      }
      if(dice.numDots == 3){
        threes++;
      }
      if(dice.numDots == 4){
        fours++;
      }
      if(dice.numDots == 5){
        fives++;
      }
      if(dice.numDots == 6){
        sixes++;
      }
    }
  }
  textSize(20);
  text("you rolled " + sum + "!", 25, 320);
  textSize(10);
  text("times 1 appeared: " + ones, 25, 345);
  text("times 2 appeared: " + twos, 160, 345);
  text("times 3 appeared: " + threes, 285, 345);
  text("times 4 appeared: " + fours, 25, 375);
  text("times 5 appeared: " + fives, 160, 375);
  text("times 6 appeared: " + sixes, 285, 375);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int numDots, myX, myY;
  
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    numDots = (int)(Math.random()*6)+1;
  }
  void roll()
  {
    //your code here
  }
  void show()
  {
    fill(255, 255, 255);
    noStroke();
    rect(myX, myY, 50, 50, 13);
    if(numDots == 1 || numDots == 3 || numDots == 5){
      noStroke();
      fill((int)(Math.random()*50)+180, (int)(Math.random()*50)+180, (int)(Math.random()*50)+180);
      ellipse(myX+25, myY+25, 10, 10);
    } 
    if(numDots >= 2 && numDots <= 6){
      noStroke();
      fill((int)(Math.random()*50)+180, (int)(Math.random()*50)+180, (int)(Math.random()*50)+180);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
    }
    if(numDots >= 4 && numDots <= 6){
      noStroke();
      fill((int)(Math.random()*50)+180, (int)(Math.random()*50)+180, (int)(Math.random()*50)+180);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
    }
     if(numDots == 6){
      noStroke();
      fill((int)(Math.random()*50)+180, (int)(Math.random()*50)+180, (int)(Math.random()*50)+180);
      ellipse(myX+40, myY+25, 10, 10);
      ellipse(myX+10, myY+25, 10, 10);
    }
  }
}
