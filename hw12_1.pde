cloudcloud [] cl;
treetree [] tr;
void setup() {
  size(900, 900);
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
  cl[2].cloud();
  tr[2].tree();
}
