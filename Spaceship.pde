class Spaceship extends Floater  
{   
  public Spaceship(){
    myCenterX = 1000;
    myCenterY = 1000;
    myColor = 255;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
    corners = 3;
    yCorners = new int[3];
    xCorners = new int[3];
    xCorners[0] = (-100);
    xCorners[1] = (100);
    xCorners[2] = (-100);
    yCorners[0] = (100);
    yCorners[1] = (0);
    yCorners[2] = (-100);
  }
}
