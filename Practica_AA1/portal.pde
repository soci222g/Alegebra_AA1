boolean isActivated;
int width_lenthg;
int height_length;

int right;
int left;
int up;
int down;



void SetUP_portal(){
    width_lenthg = 40;
    height_length = height;
    isActivated = false;
    right = int((width - width_lenthg*0.5) +  width_lenthg);     //position X+width/2 = posicio dreta
    left = int((width - width_lenthg*0.5) -  width_lenthg);      //position X-width/2 = posicio esquera
    up = int((height*0.5) - height_length * 0.5);
    down = int((height*0.5) + height_length * 0.5);
}


void drowPortal(){
  isActivated = true;
  fill(0);
  rectMode(CENTER);
  rect( width - width_lenthg*0.5, height*0.5, width_lenthg, height_length);
  Spawn_SafePoints();
}




void collidePlayer(){
  if(PJ_position.x >= left){
      CurrentScean = scean.BOSS;
          PJ_position.x = width/2;
          PJ_position.y = height/2;
          PNJ1_position.x = width/2;
          PNJ1_position.y = height/2; 
          PNJ2_position.x = width/2;
          PNJ2_position.y = height/2;
  }  

}
