Snowflake [] boy;
void setup()
{
  size (500, 500);
}
void draw()
{
  boy = new Snowflake [50];
  for (int i = 0; i < boy.length; i++)
  {
    boy[i] = new Snowflake();
    boy[i].show();
    boy[i].move();
    boy[i].erase();
    boy[i].lookDown();
    boy[i].wrap();
  }
}
void mouseDragged()
{
  //your code here
}

class Snowflake
{
  int x, y;
  boolean isMoving;
  Snowflake()
  {
    x = (int) (Math.random()*500);
    y = (int) (Math.random()*500);
    isMoving = true;
  }
  void show()
  {
    fill (255);
    ellipse (x, y, 5, 5);
  }
  void lookDown()
  {
    if ( y >= 0 && y <= 500 && y+1 != color (0))
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
