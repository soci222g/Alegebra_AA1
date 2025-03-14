
////General


PrintWriter output;

//player

 
////PNJ Aliats
//  PVector PNJ1_position;
//  int PNJ1_radius;
//  int PNJ1_distance; //distance form player

//  boolean PNJ2_activated;
//  PVector PNJ2_position;
//  int PNJ2_distance; //distance form player
//  int PNJ_hp;

 




//void setup(){
//  //general elements (size, background
//  size(600,600);
//  background(255);
  
  
  
  //initalize player
  radios_Player = 30;
  PJ_position = new PVector(width/2,height/2);
  PJ_speed = 0.01;
  
// //initalize PNJ_aliats
//   PNJ1_position = new PVector(width/2,0);
//   PNJ1_radius = 25;
//   fill(0,255,0);
  
  
  
  
   PNJ2_activated = false;
   PNJ2_position = new PVector(random(width),random(height));
   PNJ_hp = 3;
   
   
}



void draw(){
  background(255);
   
  // moviment player
 // MoimentPNJ1Alai(); // moviment PNJ 1
  // MoviemtnPlayerKeyboardMoimentPNJ2Alai(); // Moviment PNJ 2
MoviemtnPlayerKeyboard();


//printantge Player
  fill(0);
  ellipse( PJ_position.x, PJ_position.y, radios_Player, radios_Player);
  
  
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
