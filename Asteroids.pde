class Asteroid extends Floater{
  public Asteroid(){
    corners = 5;
    yCorners = new int[corners];
    xCorners = new int[corners]; 
    xCorners[0] = -20;
    xCorners[1] = 0;
    xCorners[2] = 20;
    xCorners[3] = 10;
    xCorners[4] = -10;
    yCorners[0] = 0;
    yCorners[1] = 20;
    yCorners[2] = 0;
    yCorners[3] = -20;
    yCorners[4] = -20;
    myCenterX = Math.random() * width;
    myCenterY = Math.random() * height;
    myColor = #B40CE8;
    myXspeed = Math.random() * 20 - 10;
    myYspeed = Math.random() * 20 - 10;
    myPointDirection = Math.random() * 360;
  }
  public void move(int turndeg){
    super.move();
    turn(turndeg);
  }
}
