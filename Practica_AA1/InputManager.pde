

  boolean UpDirection;
  boolean downDirectipn;
  boolean RightDirection;
  boolean LeftDirection;
  
  
//PJ_position.y = -height * PJ_speed + PJ_position.x * (1-PJ_speed); //<>// //<>// //<>// //<>// //<>//



void keyPressed() {

 
 
  
  if(CurrentScean == scean.GAME_PLAY){

    
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
  
  if(CurrentScean == scean.BOSS){

    
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
  
  if(CurrentScean == scean.ENEMY_SELECT){
 
  
    if(int(key) - 48 > 0){
      int temporalNumb = int(key) - 48; //ens guardem el nou valor
      num_enemies = ( num_enemies * 10) + temporalNumb; // formula per afagir un valor mes a un integer. mult el valor anterior per 10 i li sumes el que vols afagir.
      
   // Convierte la tecla en número correctamente
      setUpEnemies(); // Llamar la función solo si el número es válido
  }
    
  else{
    printErrorChuseNumber();
  }
  
  if( int(key) == 10){
        println(num_enemies);
     CurrentScean = scean.GAME_PLAY; 
  }
  
  
}
  
  
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

  if(CurrentScean == scean.LOST){
    if(int(key) == 10){
      CurrentScean= scean.PLAYER_SELECT; 
    }
  }
    if(CurrentScean == scean.WIN){
    if(int(key) == 10){
      CurrentScean= scean.PLAYER_SELECT; 
    }
    
  
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
