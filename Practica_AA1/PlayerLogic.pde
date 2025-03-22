
 float PJ_speed; 
 PVector PJ_position;
 int radios_Player;
 int speed_PLayer;
 int EnemyKilled;
 float AlfaPlayer;
 
  boolean isMouse;

int goodPowerUpsCount;


  
  
//PJ_position.y = -height * PJ_speed + PJ_position.x * (1-PJ_speed); //<>//


void MouseMovement(){ //moviment del mouse

// x_pnj[i] = (1.0 - alfa[i]) *x_pnj[i] + alfa[i] * PNJ2_position.x;

PJ_position.x = (1.0 - AlfaPlayer) *PJ_position.x + AlfaPlayer * mouseX;
PJ_position.y = (1.0 - AlfaPlayer) *PJ_position.y + AlfaPlayer * mouseY;
 //PJ_position.x = mouseX;
 //PJ_position.y  = mouseY;
 
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

  
  //mirem colisio del enemic
  for(int i  = 0; i < spawned_enemy; i++){
      PVector CollDistance = new PVector(x_pnj[i] - PJ_position.x, y_pnj[i] - PJ_position.y);
      float Distance_moculo = sqrt(CollDistance.x*CollDistance.x + CollDistance.y * CollDistance.y);  
      
   
      if(Distance_moculo <= enemy_radius && IsAlive[i] == true){
          EnemyKilled++;
          IsAlive[i] = false;
          current_enemies--;
      }
   
   
  }
  
 

}
