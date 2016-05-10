class Stop {
  float stopgomb_y;
  float stopgomb_x;
  float sugar=60;
  color stopgomb_szin;
  color gomb_alap;
  color gomb_aktiv;
  color stop_text;
  color text_alap;
  color text_aktiv;


  public Stop () {
    stopgomb_y = height-sugar*2;
    stopgomb_x = (width/2)-100;
    gomb_alap = 255;
    gomb_aktiv = #F28702;
    text_alap = #F28702;
    text_aktiv = #F7F7F7;
  }


  void stop_rajzol() {
    noStroke();
    fill (stopgomb_szin);
    ellipse (stopgomb_x, stopgomb_y, sugar, sugar);

    textAlign(CENTER, CENTER);
    fill (stop_text);
    textSize(15);
    text("Stop", stopgomb_x, stopgomb_y-3);
  }


  void stop_funkcio() {
    if (abs(stopgomb_x-mouseX)<sugar && abs(stopgomb_y-mouseY)<sugar && mousePressed) {
      stopgomb_szin = gomb_aktiv;
      stop_text = text_aktiv;
    }
  }


  void stop_reset() {
    stopgomb_szin = gomb_alap;
    stop_text = text_alap;
  }


  void stop_keret() {
    if (abs(stopgomb_x-mouseX)<sugar && abs(stopgomb_y-mouseY)<sugar && mousePressed) {
      fill(gomb_aktiv);
      ellipse(stopgomb_x, stopgomb_y+sugar, sugar/4, sugar/4);
    }
  }
}