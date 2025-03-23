void SetUp_element(){

  
   CurrentScean = scean.PLAYER_SELECT;

  
 
  
  
  
  //initalize player
  radios_Player = 15;
  PJ_position = new PVector(width/2,height/2);
  PJ_speed = 0.005;
  AlfaPlayer = 0.3;
  puntuaci = 0;
  puntuacio_text = "0";
  HP_Player = 3;
  EnemyKilled = 0;
  goodPowerUpsCount = 0;
  Health_BarSize_weight_PJ = 30;
  Health_BarSize_height_PJ = 30;
  
  
 //initalize PNJ_aliats
   PNJ1_position = new PVector(width/2,0);
   PNJ1_radius = 10;
   PNJ1_distance = 50;
   PNJ1_Speed = 0.3;
   fill(0,255,0);
  
  

   PNJ2_activated = false;
   PNJ2_position = new PVector(random(width),random(height));
   PNJ2_radius = 12;
   
   PNJ2_distance = 75;
   PNJ2_Speed = 0.2;
   Health_BarSize_weight = 20;
   Health_BarSize_Height = 20;
   PNJ_hp = 3;
   
   
     SetUP_portal();

    Setup_safePositions();

    Setup_Walls();
}
