
 float PJ_speed; 
 PVector PJ_position;
 int radios_Player;
 int speed_PLayer;
 int EnemyKilled; 
 
  boolean isMouse;



  
  
//PJ_position.y = -height * PJ_speed + PJ_position.x * (1-PJ_speed); //<>//


void MouseMovement(){

 PJ_position.x = mouseX;
 PJ_position.y  = mouseY;
 
}


void MoviemtnPlayerKeyboard(){ //moviemet del PJ
  
     if(LeftDirection){
         PJ_position.x = -width * PJ_speed + PJ_position.x * (1-PJ_speed);
     }
    
     
     if(RightDirection){
         PJ_position.x = width * PJ_speed + PJ_position.x * (1+PJ_speed);
     }
     
     if(UpDirection){
         PJ_position.y = -height * PJ_speed + PJ_position.y * (1-PJ_speed);
     }
     
     if(downDirectipn){
         PJ_position.y = height * PJ_speed + PJ_position.y * (1+PJ_speed);
     }

  
}

//spawned_enemy

void collisonWithEnemy(){

  
  for(int i  = 0; i < spawned_enemy; i++){
      PVector CollDistance = new PVector(x_pnj[i] - PJ_position.x, y_pnj[i] - PJ_position.y);
      float Distance_moculo = sqrt(CollDistance.x*CollDistance.x + CollDistance.y * CollDistance.y);  
      
      if(Distance_moculo <= PNJ2_radius*2){
      PNJ2_activated = true;
      }
  }
  
  
  if(



  EnemyKilled++

}
