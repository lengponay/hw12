cloudcloud [] cl;
treetree [] tr;
void setup() {
  size(1200, 900);
  cl = new cloudcloud[8];
  tr = new treetree[8];
  for (int i=0; i<8; i++) cl[i]= new cloudcloud();
  for (int i=0; i<8; i++) tr[i]= new treetree();
}
void draw() {
  background(0, 200, 240);
  for (int i=0; i<8; i++) {
    cl[i].flycloud();
    cl[i].cloud();
  }
  for (int i=0; i<8; i++) {
    tr[i].flytree();
    tr[i].tree();
  }
  tr[2].tree();     // sprint 2
  cl[4].cloud();// sprint 2

  tr[2].vx = 0;// no move
  tr[2].vy = 0;// no move

  cl[4].vx = 0;// no move
  cl[4].vy = 0;// no move
}
void mousePressed() { // sprint 2
  tr[2].x = mouseX;
  tr[2].y = mouseY;
}
void keyPressed() {   // sprint 2
  if (key == 'a') cl[4].x -= 20;
  else if (key == 'd') cl[4].x += 20;
  else if (key == 's') cl[4].y += 20;
  else if (key == 'w') cl[4].y -= 20;
  
  
  if (key == CODED){
    if (keyCode == LEFT) { cl[4].x -= 20;}
    else if (keyCode == RIGHT){ cl[4].x += 20;}
    else if (keyCode == DOWN){ cl[4].y += 20;}
    else if (keyCode == UP) {cl[4].y -= 20;}
  }
}
