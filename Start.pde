class Start {
  float startgomb_y;
  float startgomb_x;
  float sugar=60;
  color startgomb_szin;
  color gomb_alap;
  color gomb_aktiv;
  color start_text;
  color text_alap;
  color text_aktiv;
  float atlatszo;


  public Start () {
    startgomb_y = height-sugar*2;
    startgomb_x = (width/2)-200;
    gomb_alap = color(255, 255);
    gomb_aktiv = color(#F28702, 255);
    text_alap = color(#F28702, 255);
    text_aktiv = color(#F7F7F7, 255);
  }


  void start_rajzol() {
    noStroke();
    fill (startgomb_szin);
    ellipse (startgomb_x, startgomb_y, sugar, sugar);

    textAlign(CENTER, CENTER);
    fill (start_text);
    textSize(15);
    text("Start", startgomb_x, startgomb_y-3);
  }


  void start_funkcio() {
    if (abs(startgomb_x-mouseX)<sugar && abs(startgomb_y-mouseY)<sugar && mousePressed) {
      startgomb_szin = gomb_aktiv;
      start_text = text_aktiv;
    }
  }


  void start_reset() {
    startgomb_szin = gomb_alap;
    start_text = text_alap;
  }


  /* void start_keret() {
   if (abs(startgomb_x-mouseX)<sugar && abs(startgomb_y-mouseY)<sugar && mousePressed) {
   fill(allapotjelzo_szin);
   ellipse(startgomb_x, startgomb_y+sugar, sugar/4, sugar/4);
   allapotjelzo_szin = gomb_aktiv;
   }
   }
   */

  void atlatszo () {
    gomb_alap = color (255, 0);
    gomb_aktiv = color (255, 0);
    text_alap = color(255, 0);
    text_aktiv = color(255, 0);
  }
}