

  boolean UpDirection;
  boolean downDirectipn;
  boolean RightDirection;
  boolean LeftDirection;
  
  
//PJ_position.y = -height * PJ_speed + PJ_position.x * (1-PJ_speed); //<>//



void keyPressed() {

 if(CurrentScean == scean.PLAYER_SELECT){
   if(key == '0'){
     isMouse = true;
     CurrentScean = scean.ENEMY_SELECT;
   }
   else if (key == '1'){
     isMouse = false;
     CurrentScean = scean.ENEMY_SELECT;

   }
 }
  
   if (key == 'a' || key == 'A'){
        
        LeftDirection = true;
    }
   if (key == 'd'  || key == 'D'){
        
        RightDirection = true;
    }
    if (key == 'w'  || key == 'W'){
        
        UpDirection = true;
    }  
    if (key == 's'  || key == 'S'){
        
        downDirectipn = true;
    }  


}

void keyReleased(){

    if (key == 'a'  || key == 'A'){
        LeftDirection = false;
    }
   if (key == 'd'  || key == 'D'){
        
        RightDirection = false;
    }
    if (key == 'w'  || key == 'W'){
        
        UpDirection = false;
    }  
    if (key == 's'  || key == 'S'){
        
        downDirectipn = false;
    } 


}
