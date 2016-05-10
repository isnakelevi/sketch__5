class Save {
  float savegomb_y;
  float savegomb_x;
  float sugar=60;
  color savegomb_szin;
  color gomb_alap;
  color gomb_aktiv;
  color save_text;
  color text_alap;
  color text_aktiv;


  public Save () {
    savegomb_y = height-sugar*2;
    savegomb_x = width/2 +100;
    gomb_alap = 255;
    gomb_aktiv = #F28702;
    text_alap = #F28702;
    text_aktiv = #F7F7F7;
  }


  void save_rajzol() {
    noStroke();
    fill (savegomb_szin);
    ellipse (savegomb_x, savegomb_y, sugar, sugar);

    textAlign(CENTER, CENTER);
    fill (save_text);
    textSize(15);
    text("Save", savegomb_x, savegomb_y-3);
  }


  void save_funkcio() {
    if (abs(savegomb_x-mouseX)<sugar && abs(savegomb_y-mouseY)<sugar && mousePressed) {
      savegomb_szin = gomb_aktiv;
      save_text = text_aktiv;
    }
  }


  void save_reset() {
    savegomb_szin = gomb_alap;
    save_text = text_alap;
  }
  
  
  void save_keret() {
    if (abs(savegomb_x-mouseX)<sugar && abs(savegomb_y-mouseY)<sugar && mousePressed) {
      fill(gomb_aktiv);
      ellipse(savegomb_x, savegomb_y+sugar, sugar/4, sugar/4);
    }
  }
  
  
  void mentes () {
  save("1.jpg");
  }
}