//PNJ Aliats
  PVector PNJ1_position;
  int PNJ1_radius;
  int PNJ1_distance; //distance form player
  float PNJ1_Speed;

 boolean PNJ2_activated;
 PVector PNJ2_position;
 int PNJ2_radius;
 int PNJ2_distance; //distance form player
 int PNJ_hp;
 float PNJ2_Speed;
 int Health_BarSize_Height;
 
 int Health_BarSize_weight;
 
 void MoimentPNJ1Alai(){
  
  fill(0,255,0);
  
  PVector CollDistance = new PVector(PNJ1_position.x - PJ_position.x, PNJ1_position.y - PJ_position.y);
  
  
  float Distance_moculo = sqrt(CollDistance.x*CollDistance.x + CollDistance.y * CollDistance.y);
  
  if(PNJ1_distance <= Distance_moculo){//distancia de no aproparse
    PNJ1_position.x = (1-PNJ1_Speed)*PNJ1_position.x + PJ_position.x * PNJ1_Speed;
    PNJ1_position.y = (1-PNJ1_Speed)*PNJ1_position.y + PJ_position.y * PNJ1_Speed;
  }
  
     PNJ1_position.x = constrain(PNJ1_position.x, 0, width);
     PNJ1_position.y = constrain(PNJ1_position.y, 0, height);
  
  fill(255,0,0);
  ellipse(PNJ1_position.x,PNJ1_position.y, radios_Player, radios_Player);
  


                
}

void MoimentPNJ2Alai(){
  
   PVector CollDistance = new PVector(PNJ2_position.x - PJ_position.x, PNJ2_position.y - PJ_position.y);
  float Distance_moculo = sqrt(CollDistance.x*CollDistance.x + CollDistance.y * CollDistance.y);
  
  
  
     if(Distance_moculo <= PNJ2_radius*2){
        PNJ2_activated = true;
      }
  
  
  
  if(PNJ2_activated == true){
    if(PNJ2_distance <= Distance_moculo){//distancia de no aproparse
        PNJ2_position.x = (1-PNJ2_Speed)*PNJ2_position.x + PJ_position.x * PNJ2_Speed;
        PNJ2_position.y = (1-PNJ2_Speed)*PNJ2_position.y + PJ_position.y * PNJ2_Speed;
    }
  }
  
   PNJ2_position.x = constrain(PNJ2_position.x, 0, width);
   PNJ2_position.y = constrain(PNJ2_position.y, 0, height);
  
  fill(0,0,255);
  ellipse(PNJ2_position.x,PNJ2_position.y, radios_Player, radios_Player);
  
  fill(0,255,0);
  rect(PNJ2_position.x - (Health_BarSize_weight * (PNJ_hp*0.5)) * 0.5 ,PNJ2_position.y - Health_BarSize_Height * 2, Health_BarSize_weight * (PNJ_hp*0.5), Health_BarSize_Height);
  

}

void takeDamage()
{
  PNJ_hp--;
}
