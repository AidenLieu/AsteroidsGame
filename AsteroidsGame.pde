Spaceship ship;
ArrayList<Asteroid> asteroids = new ArrayList<Asteroid>();
Star[] stars = new Star[1000];

//your variable declarations here
public void setup(){
  fullScreen();
  background(0);
  for(int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
  ship = new Spaceship();
  asteroids.add(new Asteroid());
  asteroids.add(new Asteroid());
  asteroids.add(new Asteroid());
}

public void draw() 
{
  background(0);
  for(int i = 0; i < stars.length; i++){
    stars[i].show();
  }
  ship.move();
  ship.show();
  for(int i = 0; i < asteroids.size(); i++){
    asteroids.get(i).show();
    asteroids.get(i).move((int)(Math.random() * 10));
  }
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
    ship.turn(5);
  }
  if(key == 'r'){
    ship.hyperspace();
  }
  if(key == 't'){
    asteroids.add(new Asteroid());
  }
  if(key == 'x'){
    for(int i = 0; i < asteroids.size(); i++){
      asteroids.remove(0);
    }
  }
}
