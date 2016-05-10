class Met_valaszto {
  int x, y;                 // The x- and y-coordinates of the rect
  int size, dotSize;        // Dimension of circle, inner circle
  color baseGray, dotGray;  // Circle gray value, inner gray value
  boolean checked = false;  // True when the button is selected
  int me;                   // ID number for this Radio object
  Met_valaszto[] others;           // Array of all other Radio objects

  Met_valaszto(int xp, int yp, int s, color b, color d, int m, Met_valaszto[] o) {
    x = xp;
    y = yp;
    size = s;
    dotSize = size - size/3;
    baseGray = b;
    dotGray = d;
    me = m;
    others = o;
  }
  
  boolean press(float mx, float my) {
    if (dist(x, y, mx, my) < size/2) {
      checked = true;
      for (int i = 0; i < others.length; i++) {
        if (i != me) {
          others[i].checked = false;
        }
      }
      return true;
    } else {
      return false;
    }
  }


  void display() {
    noStroke();
    fill(baseGray);
    ellipse(x, y, size, size);
    if (checked == true) {
      fill(dotGray);
      ellipse(x, y, dotSize, dotSize);
    }
  }
}