Character character;
Warrior warrior;

void setup() {
  size(640,360);
  character = new Character(); 
  warrior = new Warrior();
}

void draw() {
  background(0);
  warrior.update();
  warrior.display();
  character.update();
  character.display(); 
}

class Character {

  PVector location;
  PVector velocity;
  PVector acceleration;
  float topspeed;
  PVector Enemy;
  PVector Warrior;

  Character() {
    // Start in the center
    location = new PVector(width/2,height/2);
    velocity = new PVector(0,0);
    topspeed = 5;
  }

  void update() {
    
    PVector mouse = new PVector(mouseX,mouseY);
    PVector acceleration = PVector.sub(mouse,location);
    
    
    acceleration.setMag(0.2);
    velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity);
  }

  void display() {
    stroke(255);
    strokeWeight(2);
    fill(255,0,0);
    ellipse(location.x,location.y,48,48);
     text("Enemy + 3 vides" + location.x,location.y,48,48);
     float r = random(100);
    
  }
}
class Warrior {

  PVector location;
  PVector velocity;
  PVector acceleration;
  float topspeed;
  PVector Enemy;
  PVector Warrior;

  Warrior() {
    // Start in the center
    location = new PVector(width/1,height/1);
    velocity = new PVector(0,0);
    topspeed = 5;
  }

  void update() {
    
    PVector mouse = new PVector(mouseX,mouseY);
    PVector acceleration = PVector.sub(mouse,location);
    
    
    acceleration.setMag(0.5);
    velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity);
  }

  void display() {
    stroke(255);
    strokeWeight(2);
    fill (0, 255,0);
    ellipse(location.x,location.y,48,48);
     text("Warrior + 5 vides" + location.x,location.y,100,70);
     float r = random(50);
    

  }
}
