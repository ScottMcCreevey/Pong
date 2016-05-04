int ballX;
int ballY;
int ballW;
int ballH;
int paddleXleft;
int paddleYleft;
int paddleHeight;
int paddleWidth;
int paddleVel;
int paddleXRight;
int paddleYRight;
int speedX;
int speedY;
boolean upLLeft,downLLeft;
boolean upRRight,downRRight;
int scoreL = 0;
int scoreR = 0;

void setup()
{
size(600,500);

ballX = width/2;
ballY = height/2;
ballW = 50;
ballH = 50;
speedX = 3;
speedY = 3;

 paddleXleft = 50;
 paddleYleft = height/2;
 paddleHeight = 100;
 paddleWidth = 30;
 paddleVel = 5;
 
 paddleXRight = width-40;
 paddleYRight = height/2;
}

void draw()
{
  background(255);
  fill(0,255,0);
  ellipse(ballX, ballY, ballW, ballH);
  
  textSize(30);
  
  rectMode(CENTER);
  fill(255,255,0);
  rect(paddleXleft,paddleYleft,paddleWidth,paddleHeight);
  fill(0,0,255);
  rect(paddleXRight,paddleYRight,paddleWidth,paddleHeight);
  
  scores();
  
  
  //Left Player Paddle Ball Contact
  if(ballX - ballW/2 < paddleXleft + paddleWidth/2 
  && ballY - ballH/2 < paddleYleft + paddleHeight/2 
  && ballY - ballH/2 > paddleYleft - paddleHeight/2)
  {
    speedX = -speedX;
  }
else if(ballX + ballW/2 > paddleXRight - paddleWidth/2 
  && ballY - ballH/2 < paddleYRight + paddleHeight/2 
  && ballY - ballH/2 > paddleYRight - paddleHeight/2)
  {
    speedX = -speedX;
  }
  
  //Paddle Restaints
  if(paddleYleft + paddleHeight/2 > height)
  {
    paddleYleft = paddleYleft - paddleVel;
  }
  
  if(paddleYleft - paddleHeight/2 < 0)
  {
    paddleYleft = paddleYleft + paddleVel;
  }
   if(paddleYRight + paddleHeight/2 > height)
  {
    paddleYRight = paddleYRight - paddleVel;
  }
  
  if(paddleYRight - paddleHeight/2 < 0)
  {
    paddleYRight = paddleYRight + paddleVel;
  }
  //Paddle Movement
  if(upLLeft)
  {
    paddleYleft = paddleYleft + paddleVel;
  }
  if(downLLeft)
  {
    paddleYleft = paddleYleft - paddleVel;
  }
   if(upRRight)
  {
    paddleYRight = paddleYRight + paddleVel;
  }
  if(downRRight)
  {
    paddleYRight = paddleYRight - paddleVel;
  }
  
  //Ball Restriants
  if (ballX > width - 25)
  {
    speedX = -speedX;
    scoreL = scoreL + 1;
  }
  else if (ballX < 0 + 25)
  {
    speedX = -speedX;
    scoreR = scoreR + 1;
  }
  
  if (ballY > height - 25)
  {
    speedY  = -speedY;
  }
   else if (ballY < 0 + 25)
  {
    speedY = -speedY;
  }

ballX = ballX + speedX;
ballY = ballY + speedY;
}


void scores()
{
  fill(0);
  text(scoreL, 250, 50);
  text(scoreR, 350, 50);
}

void keyPressed()
{
  if(key == 's')
  {
  upLLeft = true;
}
if(key == 'w')
{
downLLeft = true;
}
  if(keyCode == DOWN)
  {
  upRRight = true;
}
if(keyCode == UP)
{
downRRight = true;
}
}

void keyReleased()
{
 if(key == 's')
  {
  upLLeft = false;
}
if(key == 'w')
{
downLLeft = false;
}
 if(keyCode == DOWN)
  {
  upRRight = false;
}
if(keyCode == UP)
{
downRRight = false;
}
}  

 
   