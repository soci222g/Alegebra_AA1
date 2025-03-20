//PNJ Aliats
  PVector PNJ1_position;
  int PNJ1_radius;
  int PNJ1_distance; //distance form player
  float PNJ1_Speed;

 boolean PNJ2_activated;
 PVector PNJ2_position;
 int PNJ2_distance; //distance form player
 int PNJ_hp;
 float PNJ2_Speed;
 
 
 void MoimentPNJ1Alai(){
  
  fill(0,255,0);
  
  PVector CollDistance = new PVector(PNJ1_position.x - PJ_position.x, PNJ1_position.y - PJ_position.y);
  
  
  float Distance_moculo = sqrt(CollDistance.x*CollDistance.x + CollDistance.y * CollDistance.y);
  
  if(PNJ1_distance <= Distance_moculo){//distancia de no aproparse
    PNJ1_position.x = (1-PNJ1_Speed)*PNJ1_position.x + PJ_position.x * PNJ1_Speed;
    PNJ1_position.y = (1-PNJ1_Speed)*PNJ1_position.y + PJ_position.y * PNJ1_Speed;
  }
  
  
  ellipse(PNJ1_position.x,PNJ1_position.y, radios_Player, radios_Player);
  

}

void MoimentPNJ2Alai(){
  if(PNJ2_activated == true){
    
  }
  else{
    
  
  }
  fill(0,0,255);
  ellipse(PNJ2_position.x,PNJ2_position.y, radios_Player, radios_Player);
  

}
