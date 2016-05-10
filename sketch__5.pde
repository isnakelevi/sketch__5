Start startgomb;
Stop stopgomb;
Delet deletgomb;
Save savegomb;
Next nextgomb;

int nr = 100;
Metodus_kozep k_metodus [] = new Metodus_kozep [nr];
Metodus_random r_metodus [] = new Metodus_random [nr];

Met_valaszto[] rublika = new Met_valaszto[2];

PImage kep;
Boolean lamp_on = false;
color hatter;
//color hatter;


//////////////////////////////////////////////////////////////


void setup () {
  frameRate(300);
  size(900, 1200);
  hatter = #F2F2F2;
  background (hatter);
  imageMode (CENTER);
  kep = loadImage("kap.jpg");


  for (int i=0; i<nr; i++) {
    Metodus_kozep m=new Metodus_kozep ();
    k_metodus[i]=m;
    Metodus_random r_m= new Metodus_random ();
    r_metodus[i]=r_m;
  }

  rublika[0] = new Met_valaszto(33, height-130, 15, color(255), color(#F28702), 0, rublika);
  rublika[1] = new Met_valaszto(33, height-110, 15, color(255), color(#F28702), 1, rublika);

  startgomb = new Start ();
  stopgomb = new Stop ();
  deletgomb = new Delet ();
  savegomb = new Save ();
  nextgomb = new Next ();
}


//////////////////////////////////////////////////////////////
void draw () {

  startgomb.start_rajzol();
  startgomb.start_reset();
  startgomb.start_funkcio();
  if (abs(startgomb.startgomb_x - mouseX) < startgomb.sugar && abs(startgomb.startgomb_y - mouseY) < startgomb.sugar && mousePressed) {
    lamp_on = true;
  }

  stopgomb.stop_rajzol();
  stopgomb.stop_reset();
  stopgomb.stop_funkcio();
  if (abs(stopgomb.stopgomb_x - mouseX) < stopgomb.sugar && abs(stopgomb.stopgomb_y - mouseY) < stopgomb.sugar && mousePressed) {
    lamp_on = false;
  }

  deletgomb.delet_rajzol();
  deletgomb.delet_reset();
  deletgomb.delet_funkcio();
  if (abs(deletgomb.deletgomb_x - mouseX) < deletgomb.sugar && abs(deletgomb.deletgomb_y - mouseY) < deletgomb.sugar && mousePressed) {
    background (hatter);
    lamp_on = false;
    for (int i=0; i<nr; i++) {
      Metodus_kozep m= k_metodus [i];
      m.metodus_reset();
    }
  }

  savegomb.save_rajzol();
  savegomb.save_reset();
  savegomb.save_funkcio();
  if (abs(savegomb.savegomb_x - mouseX) < savegomb.sugar && abs(savegomb.savegomb_y - mouseY) < savegomb.sugar && mousePressed) {
    savegomb.mentes();
  }

  nextgomb.next_rajzol();
  nextgomb.next_reset();
  nextgomb.next_funkcio();
  if (abs(nextgomb.nextgomb_x - mouseX) < nextgomb.sugar && abs(nextgomb.nextgomb_y - mouseY) < nextgomb.sugar && mousePressed) {
  }

  rublika[0].display();
  rublika[1].display();

  if (lamp_on) {
    for (int i=0; i<nr; i++) {
      Metodus_kozep m= k_metodus [i];
      m.kirajzol();
      m.rendez ();
    }
  }
}

void mousePressed() {
  rublika[0].press(mouseX, mouseY);
  rublika[1].press(mouseX, mouseY);
}