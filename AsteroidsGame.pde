Spaceship ship;
Star[] stars = new Star[1000];

//your variable declarations here
public void setup(){
  fullScreen();
  background(0);
  for(int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
  ship = new Spaceship();
}

public void draw() 
{
  background(0);
  for(int i = 0; i < stars.length; i++){
    stars[i].show();
  }
  ship.move();
  ship.show();
}

public void keyPressed(){
  if(key == 'w'){
    ship.accelerate(0.2);
  }
  if(key == 's'){
    ship.accelerate(-0.2);
  }
  if(key == 'a'){
    ship.turn(-5);
  }
  if(key == 'd'){
    ship.accelerate(5);
  }
  if(key == 'r'){
    ship.hyperspace();
  }
}
