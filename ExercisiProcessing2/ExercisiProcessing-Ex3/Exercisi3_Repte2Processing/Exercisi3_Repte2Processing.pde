PVector u = new PVector(8,-4);

void setup() {
  size(640,360);
   u = new PVector(20.0, 30.0, 40.0);
  float m = u.mag();
  println(m);
}


 
void draw() {
  background(255);
 
  PVector mouse = new PVector(mouseX,mouseY);
  PVector center = new PVector(width/2,height/2);
  
  
  mouse.sub(center);
  mouse.mult(0.3);


 
  float m = mouse.mag();
  fill(0);
  rect(0,0,m,10);
   fill(0, 255, 25);

  translate(width/2,height/2);
  line(0,0,mouse.x,mouse.y);


}
