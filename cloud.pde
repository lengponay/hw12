class cloudcloud {
  cloudcloud(){
    x = random(width);
    y = random(height);
    d = random(70, 100);
    vx= random(3,6);
    vy= random(3,6);
    cat = new catcat(x,y,d); // sprint 3
  };
  // cloudcloud(float dd) {
  //  d = dd;
  //  x = 300;
  //  y = 200;
  //  //op = 1;
  //  vx = random(3, 5);
  //  vy = random(3, 5);
  //  cat = new catcat();// sprint 3
  //};
  cloudcloud(float a, float b, float c) {
    x = a;
    y = b;
    d = c;
    vx=random(1,2);
    vy=random(1,2);
    cat = new catcat();
   }
 float x, y, d, vx, vy; //member data 
 catcat cat;
  void flycloud() {
    x += vx;
    y += vy;
    if ( x > width || x < 0) vx = -vx;
    if (y > height || y < 0) vy = -vy;
  }
 
  //int op;
  void cloud () {
    cat.x = x;// sprint 3
    cat.y = y-3*d;// sprint 3
    cat.d = d;
    cat.cat();// sprint 3
    //cloud
    fill (255);
    noStroke();
    circle (x-0.8*d, y-1.4*d, 1*d);
    circle (x-1.4*d, y-1.25*d, 0.7*d);
    circle (x-0.2*d, y-1.25*d, 0.7*d);
    circle (x+0.25*d, y-1.18*d, 0.5*d);
    fill (255);
  }
}
