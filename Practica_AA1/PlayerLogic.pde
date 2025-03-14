
 float PJ_speed; //
 PVector PJ_position;
 int radios_Player;
 int speed_PLayer;

  boolean isMouse;


  boolean UpDirection;
  boolean downDirectipn;
  boolean RightDirection;
  boolean LeftDirection;
  
  
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

void keyPressed() {

 
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
