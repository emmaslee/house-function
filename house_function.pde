//Emma Lee
//Sept 9

void setup() {
  size(600, 600);
}

void draw() {
  background(124, 211, 245);
  stroke(0);

  house(270, 200);

  //ground
  fill(206, 193, 183);
  rect(0, 450, 600, 600);

  //sun
  noStroke();
  fill(241, 255, 90);
  ellipse(100, 100, 50, 50);

  //rock
  fill(140, 142, 141);
  ellipse(100, 500, 70, 30);

  //moon
  noStroke();
  fill(255);
  ellipse(100, 250, 50, 50);

  stroke(124, 211, 245);
  fill(124, 211, 245);
  ellipse(125, 250, 50, 50);
}

void house(int x, int y) {
  pushMatrix();
  translate(x, y);

  body();
  roof();
  door();
  window(20, 20); //left
  window(140, 20); //right

  popMatrix();
}

void body() {
  //house square shape
  fill(252, 3, 90);
  rect(0, 0, 250, 250);
}

void roof() {
  //house chimney
  fill(252, 132, 3);
  rect(210, -100, 50, 100);

  //house roof
  fill(252, 132, 3);
  triangle(-20, 0, 270, 0, 120, -150);
}

void door() {
  //house door
  fill(252, 132, 3);
  rect(30, 150, 70, 100);

  //house doorknob
  fill(2-18, 3, 90);

  //door knob
  fill(0);
  ellipse(90, 200, 10, 10);
}

void window(int x, int y) {
  //window left
  fill(201, 227, 222);
  rect(x, y, 80, 80);

  ////window right

  //fill(201, 227, 222);
  //rect(130, 20, 80, 80);

  //window lines
  stroke(0);
  line(x+40, y, x+40, y+80);
  //line(70, 20, 70, 100);
}
