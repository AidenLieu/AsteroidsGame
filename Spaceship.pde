class Spaceship extends Floater  
{   
  public Spaceship(){
    myCenterX = width/2;
    myCenterY = height/2;
    myColor = #FF0000;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
    corners = 4;
    yCorners = new int[corners];
    xCorners = new int[corners];
    xCorners[0] = (-10);
    xCorners[1] = (10);
    xCorners[2] = (-10);
    xCorners[3] = (-5);
    yCorners[0] = (10);
    yCorners[1] = (0);
    yCorners[2] = (-10);
    yCorners[3] = (0);
  }
  public void hyperspace(){
    myCenterX = (Math.random() * width);
    myCenterY = (Math.random() * height);
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = (int)(Math.random()*360);
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
  public double getXspeed(){
    return myXspeed;
  }
  public double getYspeed(){
    return myYspeed;
  }
}
