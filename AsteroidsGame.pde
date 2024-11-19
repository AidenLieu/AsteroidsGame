Star[] stars = new Star[1000];
Spaceship ship = new Spaceship();

//your variable declarations here
public void setup(){
  fullScreen();
  background(0);
  for(int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
}

public void draw() 
{
  for(int i = 0; i < stars.length; i++){
    stars[i].show();
  }
  ship.show();
}
