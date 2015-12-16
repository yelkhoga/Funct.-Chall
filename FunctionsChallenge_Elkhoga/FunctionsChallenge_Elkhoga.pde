float x1, y1, x, y, c1, c2, velX, velY, rise, run;
int value = 0;



void setup() {
  x1 = 0;
  y1 = 0;
  x = 100;
  y = 100;

  rise = 0;
  run = 0;
  size(600, 600);
  background(0);
  stroke(255);
}
void mousePressed() {
  x = mouseX;
  y = mouseY;
  background(0);
}

void mouseReleased() {
  x1 = mouseX;
  y1 = mouseY;
  rise = y - y1;
  run = x - x1;

}

void draw() {
  println(x1,y1,x,y);
  line(x1, y1, x, y);
  x1+=run;
  y1+=rise;
  x+=run;
  y+=rise;
  if(x1 >= 0 ||y1 >= 0 || x >= width || y>= height ){

    rise = 0;
    run = 0;
    
  }
}