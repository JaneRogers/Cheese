int x = 65;
int y = 65;
int xvol = 10;
int yvol = 7;
Box[] cheeses;
void setup() {
  size(displayWidth, displayHeight);

  cheeses = new Box[5000];

  for (int i=0; i<cheeses.length; i++) {
    cheeses[i] = new Box(65, 65, 65, 65, xvol, yvol);
  }
}
void draw() {
  background(130, 22, 247);
  noStroke();
  for (int i=0; i<cheeses.length; i++) {
    cheeses[i].draw();
  }
}


void keyPressed() {

  if (key == 's') {
    for (int i=0; i<cheeses.length; i++) {
      cheeses[i].xvol = xvol + 8;
      cheeses[i].yvol = yvol + 8;
    }
  }
  if (key == 'r') {
    for (int i=0; i<cheeses.length; i++) {
      cheeses[i] = new Box(65, 65, 65, 65, xvol, yvol);
    }
  }
  if (key == 'm') {
    for (int i=0; i<cheeses.length; i++) {
      cheeses[i].xvol *= 2;
      cheeses[i].yvol *= 2;
    }
  }
  if(key == 'e') {
    for (int i=0; i<cheeses.length; i++) {
      cheeses[i].xvol = random(-20, 20);
      cheeses[i].yvol = random(-20, 20);
    }
  }
}