Snowflake [] boy;
void setup()
{
  background (41, 136, 185);
  size (500, 500);
  boy = new Snowflake [400];
  for (int i = 0; i< boy.length; i++)
  {
    boy[i] = new Snowflake();
  }
}
void draw()
{

  for (int i = 0; i < boy.length; i++)
  {   
    boy[i].erase();
    boy[i].lookDown();
    boy[i].move();
    boy[i].wrap();
    boy[i].show();
  }
}
void mouseDragged()
{
  fill (10);
  ellipse (mouseX, mouseY, 10, 10);
}

class Snowflake
{
  int x, y, bgColor;
  boolean isMoving;
  Snowflake()
  {
    x = (int) (Math.random()*500)+1;
    y = (int)(Math.random()*500)+1;
    bgColor = color (41, 136, 185);
    isMoving = true;
  }
  void show()
  {
    fill (255);
    ellipse (x, y, 5, 5);
  }
  void lookDown()
  {
    if ((get(x, y+3) != bgColor))
      isMoving = false;
    else
      isMoving = true;
  }
  void erase()
  {
    if (isMoving == true && get (x, y+3) == bgColor)
    {
      stroke(bgColor);
      fill (bgColor);
      ellipse (x, y, 7, 7);
    }
  }
  void move()
  {
    if (isMoving == true)
      y ++;
  }
  void wrap()
  {
    if ( y > 495)
    {
      y = 0;
      x = (int) (Math.random()*500);
    }
  }
}

/*class LadyBug
 {
 int x, y, bgColor;
 boolean isMoving;
 Snowflake()
 {
 x = (int) (Math.random()*500)+1;
 y = (int)(Math.random()*500)+1;
 bgColor = color (41,136,185);
 isMoving = true;
 }
 void show()
 {
 fill (255,0,0);
 ellipse (x, y, 10, 10);
 
 }
 void lookDown()
 {
 if ((get(x, y+3) != bgColor))
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
 if ( y >= 497)
 {
 y = 0;
 x = (int) (Math.random()*500);
 }
 }
 }*/
 /*
int x = 150;
int y = 150;
int size = 20;
void setup()
{
  size (300, 300);
}
void draw ()
{
  fill (255, 0, 0);
  strokeWeight (2);
  ellipse (x,y,size, size);
  strokeWeight (1);
  line (x, y + size/2, x, y - size/2);
  strokeWeight(3); 
  point (x + 4, y+1);
  point (x - 4, y+1);
}
*/
