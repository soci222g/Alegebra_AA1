
////General

scean CurrentScean;
PrintWriter output;

//player

 
 
 final int Tamany_Text_escollirElements = 50;
 
//PNJ Aliats
  PVector PNJ1_position;
  int PNJ1_radius;
  int PNJ1_distance; //distance form player

//  boolean PNJ2_activated;
//  PVector PNJ2_position;
//  int PNJ2_distance; //distance form player
//  int PNJ_hp;

 




void setup(){
  //general elements (size, background
  
  size(600,600);
  background(255);


SetUp_element();
   
}



void draw(){
  background(255);
   
if(CurrentScean == scean.PLAYER_SELECT){
  textSize(Tamany_Text_escollirElements);
  textAlign(CENTER);
  text("Chose a Controles", width/2, height/4);
  text ("Mouse Controler - 0", width/2, height/2);
  text ("keyboard Controler - 1", width/2, height/1.75);

} 
  
  if(CurrentScean == scean.ENEMY_SELECT){
  textSize(Tamany_Text_escollirElements);
  textAlign(CENTER);
  text("Chose a number of enemis", width/2, height/4);
  }
  
  
  
   if(CurrentScean == scean.GAME_PLAY){
        fill(0);
        ellipse( PJ_position.x, PJ_position.y, radios_Player, radios_Player);
   }
   if(CurrentScean == scean.WIN){
   
   }

   if(CurrentScean == scean.LOST){
   
   }


  // moviment player
 // MoimentPNJ1Alai(); // moviment PNJ 1
  // MoviemtnPlayerKeyboardMoimentPNJ2Alai(); // Moviment PNJ 2

MoviemtnPlayerKeyboard();







//printantge Player
 
  
  
  
  
  
  
}






//void CollisonPlayerAllai(){
  
  
  
  
//}


///*
//void activatePNJ(boolean PNJActivate){

//  PNJActivate = true;
//}

//*/
//void MoimentPNJ1Alai(){
  
//  fill(0,255,0);
//  ellipse(PNJ1_position.x,PNJ1_position.y, radios_Player, radios_Player);
  

//}

////moviment PNJ 2
//void MoimentPNJ2Alai(){
//  if(PNJ2_activated = true){
    
//  }
//  else{
    
  
//  }
//  fill(0,0,255);
//  ellipse(PNJ2_position.x,PNJ2_position.y, radios_Player, radios_Player);
  

//}
