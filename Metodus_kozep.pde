class Metodus_kozep {
  float x;
  float y;
  int xszin;
  int yszin;
  float smallR;
  float largeR;
  float mozgasiranyX;
  float mozgasiranyY;


  public Metodus_kozep () {
    x = (width/2);
    y = (height/2);
    smallR = 1;
    largeR = 10;
  }


  void rendez () {
    mozgasiranyX=random(-5, 5);
    mozgasiranyY=random(-5, 5);
    y+= mozgasiranyY;
    x+= mozgasiranyX;
  }


  void kirajzol() {
    xszin = int(x);
    yszin = int(y);
    float pointillize = map(mouseX, 0, width, smallR, largeR);
    color pix = kep.get(xszin, yszin);
    fill(pix, 128);
    noStroke();
    ellipse(x, y, pointillize, pointillize);
  }
  
  
  void metodus_reset() {
    x = (width/2);
    y = (height/2);
  }
}