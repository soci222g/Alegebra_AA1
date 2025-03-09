
//General




//player
 int PJ_speed; //
 int radios_Player;
 
 
 
//PNJ Aliats
boolean PNJ1_activated;
boolean PNJ2_activated;

int PNJ_hp;




void setup(){
  //general elements (size, background
  size(600,600);
  background(255);
  //initalize player
  radios_Player = 10;
  
 //initalize PNJ_aliats
  PNJ1_activated = false;
  PNJ2_activated = false;
}



void draw(){





}


void mouseMoved() {
background(255);
  MoviemtnPlayer();

}

void MoviemtnPlayer(){

  fill(0);
  ellipse(mouseX,mouseY, radios_Player, radios_Player);
  
}
