Spaceship ship;
ArrayList<Bullet> bullets = new ArrayList<Bullet>();
ArrayList<Asteroid> asteroids = new ArrayList<Asteroid>();
Star[] stars = new Star[1000];

//your variable declarations here
public void setup(){
  size(1000,1000);
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
  for(int i = 0; i < bullets.size(); i++){
    bullets.get(i).show();
    bullets.get(i).move();
    for(int j = 0; j < asteroids.size(); j++){
      
      if(i >= 0 && ((dist((float) bullets.get(i).getX(),(float) bullets.get(i).getY(), (float) asteroids.get(j).getX(), (float) asteroids.get(j).getY())) < 50)){
        asteroids.remove(j);
        j--;
        bullets.remove(i);
        i--;  
      }        
    }
  }
  ship.move();
  ship.show();
  for(int i = 0; i < asteroids.size(); i++){
    asteroids.get(i).show();
    asteroids.get(i).move((int)(Math.random() * 10));
    if((dist((float) ship.getX(),(float) ship.getY(), (float) asteroids.get(i).getX(), (float) asteroids.get(i).getY())) < 50){
      asteroids.remove(i);
      i--;
    }
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
  if(key == ' '){
    bullets.add(new Bullet(ship));
  }
  if(key == 'x'){
    while(asteroids.size() > 0){
      asteroids.remove(0);
    }
  }
}
