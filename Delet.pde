class Delet {
  float deletgomb_y;
  float deletgomb_x;
  float sugar=60;
  color deletgomb_szin;
  color gomb_alap;
  color gomb_aktiv;
  color delet_text;
  color text_alap;
  color text_aktiv;


  public Delet () {
    deletgomb_y = height-sugar*2;
    deletgomb_x = width/2;
    gomb_alap = 255;
    gomb_aktiv = #F28702;
    text_alap = #F28702;
    text_aktiv = #F7F7F7;
  }


  void delet_rajzol() {
    noStroke();
    fill (deletgomb_szin);
    ellipse (deletgomb_x, deletgomb_y, sugar, sugar);

    textAlign(CENTER, CENTER);
    fill (delet_text);
    textSize(15);
    text("Delet", deletgomb_x, deletgomb_y-3);
  }


  void delet_funkcio() {
    if (abs(deletgomb_x-mouseX)<sugar && abs(deletgomb_y-mouseY)<sugar && mousePressed) {
      deletgomb_szin = gomb_aktiv;
      delet_text = text_aktiv;
    }
  }


  void delet_reset() {
    deletgomb_szin = gomb_alap;
    delet_text = text_alap;
  }
  
  
  void delet_keret() {
    if (abs(deletgomb_x-mouseX)<sugar && abs(deletgomb_y-mouseY)<sugar && mousePressed) {
      fill(gomb_aktiv);
      ellipse(deletgomb_x, deletgomb_y+sugar, sugar/4, sugar/4);
    }
  }
}