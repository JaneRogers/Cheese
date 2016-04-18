class Box {
  int x = 5;
  int y = 50;
  float yvol = 3;
  float xvol = 5;
  int r=227;
  int g=227;
  int b=22;
  int wid=30;
  int heig=30;
  Box(int _x, int _y, int _wid, int _heig, int _xvol, int _yvol) {
    this.x = _x;
    this.y = _y;
    this.xvol = _xvol;
    this.yvol = _yvol;
    this.wid = _wid;
    this.heig = _heig;
  }

  void draw() {

    fill(r, g, b);
    rect(x, y, wid, heig);
    x+=xvol;
    y+=yvol;
    if (x+wid >= width) {
      xvol*=-1;
      xvol+=random(-0.5, 0.5);
    }
    if (x <= 0) {
      xvol*=-1;
      xvol+=random(-0.5, 0.5);
    }

    if (y+heig >= height) {
      yvol*=-1;
      yvol+=random(-0.5, 0.5);
    }
    if (y <= 0) {
      yvol*=-1;
      yvol+=random(-0.5, 0.5);
    }
  }
}