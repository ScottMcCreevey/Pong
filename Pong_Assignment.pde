int x;
int y;
int w;
int h;

int vel;

void setup()
{
size(500,500);

x = width/2;
y = height/2;
w = 50;
h = 50;
vel = 2;
}

void draw()
{
  background(255);
  fill(0,255,0);
  ellipse(x, y, w, h);
  
  if (x > width - w/2)
  {
    vel = -vel;
  }
  else if (x < 0 + w/2)
  {
    vel = -vel;


x = x + vel;
}