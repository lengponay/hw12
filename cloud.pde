class cloudcloud {
  cloudcloud(){
    x = random(width);
    y = random(height);
    d = random(70, 100);
    vx= random(3,6);
    vy= random(3,6);
  }
  cloudcloud(float a, float b, float c) {
    x = a;
    y = b;
    d = c;
    vx=random(1,2);
    vy=random(1,2);
   }
  float x, y, d, vx, vy; //member data
  void flycloud() {
    x += vx;
    y += vy;
    if ( x > width ||  x < 0 ) vx = -vx;
    if ( y > height || y < 0 ) vy = -vy;
  }

  void cloud () {
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
