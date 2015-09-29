Snowflake [] boy;
void setup()
{
  size (500, 500);
}
void draw()
{
  background (255);
  boy = new Snowflake [10];
  for (int i = 0; i < boy.length; i++)
  {
    boy[i] = new Snowflake();
    boy[i].show();
    boy[i].lookDown();
    boy[i].erase();
    boy[i].move();
    boy[i].wrap();
  }
}
void mouseDragged()
{
  //your code here
}

class Snowflake
{
  int x, y, bgColor;
  boolean isMoving;
  Snowflake()
  {
    x = (int) (Math.random()*500);
    y = 2;
    bgColor = color (255, 255, 255);
    isMoving = true;
  }
  void show()
  {
    fill (255);
    ellipse (x, y, 5, 5);
  }
  void lookDown()
  {
    if ((get(x, y+5) != bgColor))
      isMoving = false;
    else
      isMoving = true;
  }
  void erase()
  {
    fill (0);
    ellipse (x, y, 7, 7);
  }
  void move()
  {
    if (isMoving == true)
      y ++;
  }
  void wrap()
  {
    if ( y > 500)
    {
      y = 0;
      x = (int) (Math.random()*500);
    }
  }
}
