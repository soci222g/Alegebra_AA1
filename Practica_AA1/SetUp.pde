void SetUp_element(){

  
   CurrentScean = scean.PLAYER_SELECT;

  
 
  
  
  
  //initalize player
  radios_Player = 30;
  PJ_position = new PVector(width/2,height/2);
  PJ_speed = 0.01;
  
 //initalize PNJ_aliats
   PNJ1_position = new PVector(width/2,0);
   PNJ1_radius = 25;
   fill(0,255,0);
  
  
  
  
   PNJ2_activated = false;
   PNJ2_position = new PVector(random(width),random(height));
   PNJ_hp = 3;
   

}
