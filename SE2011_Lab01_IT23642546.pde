void setup() {
  size(600, 600);
  background(0);
  translate(width/2, height/2);
  noStroke();

  // Outer circle
  fill(255);
  ellipse(0, 0, 510, 510);
  fill(255);
  ellipse(0, 0, 500, 500);

  float k = 0.552284749831;


  // Black half
  fill(0);
  int size = 500;
  int j = 1;
  for (int i= 204; i >= 0; i-=51) {
    fill(i);
    arc(0, 0, size, size, -HALF_PI, HALF_PI);
    if (j != 0) {
      size = size - (30 / j) ;
      
    }
    j++;
  }


  

  fill(0);
  j = 1;
  float shiftY = -125;
  int shiftX = 0;
  size = 250;
  for (int i= 204; i >= 0; i-=51) {
    fill(i);
    arc(shiftX, shiftY, size, size, PI/2, 3*PI/2);
    shiftY = shiftY + 30 / j / 2 + 0.25;
    shiftX = shiftX + 10 / j /2;
    //size = size + (15 / (j - 1));
    j++;
  }

fill(255);
  arc(0, 125, 250, 250, -HALF_PI, HALF_PI); // white bottom
  
  for (int i= 0; i <= 255; i+=51) {
    fill(i);
    ellipse(0, (-99.5 + -i/15), 50, 50);
  }
  for (int i= 225; i >= 0; i-=51) {
    fill(i);
    ellipse(0, (99.5 + i/15), 50, 50);
  }

  float r = 25;

  recPeace(k, -25, 58, 255, 50, 50, r, 0);
  recPeace(k, 0, -250, 255, 250, 250, 125, -HALF_PI);
  rect(-100, 0, 100, 50);
  recPeace(k, -255, -510,0, 510, 510, 255, 0);
}



void recPeace(float k, float tX, float tY, int clr, int w, int h, float r, float rot) {
  pushMatrix();

  rotate(rot);

  translate(tX, tY);
  fill(clr);
  beginShape();

  // start
  vertex(0, 0);
  vertex(w, 0);
  vertex(w, h);
  bezierVertex(w, h - r * k, w/2 + r *  k, h/2, w/2, h/2);
  bezierVertex(w/2 - r * k, h/2, 0, h - r * k, 0, h);
  endShape(CLOSE);
  popMatrix();
}
