class Next {
  float nextgomb_y;
  float nextgomb_x;
  float sugar=60;
  color nextgomb_szin;
  color gomb_alap;
  color gomb_aktiv;
  color next_text;
  color text_alap;
  color text_aktiv;


  public Next () {
    nextgomb_y = height-sugar*2;
    nextgomb_x = width/2 +200;
    gomb_alap = 255;
    gomb_aktiv = #F28702;
    text_alap = #F28702;
    text_aktiv = #F7F7F7;
  }


  void next_rajzol() {
    noStroke();
    fill (nextgomb_szin);
    ellipse (nextgomb_x, nextgomb_y, sugar, sugar);

    textAlign(CENTER, CENTER);
    fill (next_text);
    textSize(15);
    text("Next", nextgomb_x, nextgomb_y-3);
  }


  void next_funkcio() {
    if (abs(nextgomb_x-mouseX)<sugar && abs(nextgomb_y-mouseY)<sugar && mousePressed) {
      nextgomb_szin = gomb_aktiv;
      next_text = text_aktiv;
    }
  }


  void next_reset() {
    nextgomb_szin = gomb_alap;
    next_text = text_alap;
  }
  
  
  void next_keret() {
    if (abs(nextgomb_x-mouseX)<sugar && abs(nextgomb_y-mouseY)<sugar && mousePressed) {
      fill(gomb_aktiv);
      ellipse(nextgomb_x, nextgomb_y+sugar, sugar/4, sugar/4);
    }
  }
  
  void lapozas (){
    
  }
}