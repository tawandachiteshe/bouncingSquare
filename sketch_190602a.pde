
PVector velo,speed,acce; 

void setup() {
    
  background(23, 57, 99);
  size(900, 700);
  velo = new PVector(20, 20);
  speed = new PVector(1,1);
}


void draw() {
  noStroke();
  
  
 
  //

  if ((velo.x > width) || (velo.x < 0)) 
  { 
    fill(random(0,255),random(0,255),random(0,255));
    acce = new PVector(random(9,12),random(9,12));
    velo.y += speed.y;
    speed.x *= -1;
  }
  if ((velo.y > height) || (velo.y < 0)) 
  { 
    fill(random(0,255),random(0,255),random(0,255));
    speed.y *= -1;
}

  if ((velo.x < width) || (velo.x > 0)) 
  { 
    fill(random(0,255),random(0,255),random(0,255));
    velo.x += speed.x;
  }
  if ((velo.y < height) || (velo.y > 0)) 
  { 
    fill(random(0,255),random(0,255),random(0,255));
   velo.y += speed.y;
}

  speed.normalize();
    
    rect(velo.x, velo.y, 25, 25);
  }
