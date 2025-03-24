boolean isActivated;
int width_lenthg;
int height_length;

float Pos_portal_x;
float Pos_portal_y;





void SetUP_portal(){
    width_lenthg = 30;
    height_length = 30;
    isActivated = false;
    Pos_portal_x = width * 0.5;
    Pos_portal_y = height * 0.5;
    
  
}


void drowPortal(){
  isActivated = true;
  fill(0);
  rectMode(CENTER);
  rect( Pos_portal_x, Pos_portal_y, width_lenthg, height_length);
  Spawn_SafePoints();
}




void collidePlayer(){
  
   float base_position_x = Pos_portal_x-width_lenthg*0.5;
   float base_position_y = Pos_portal_y - height_length*0.5;
 
   float TestX = PJ_position.x;
   float TestY = PJ_position.y;
      
    
    if(PJ_position.x <  base_position_x){ //mirem si esta mes aprop la dreta o la esquera
        TestX = base_position_x;
    }
    else if( PJ_position.x > base_position_x + width_lenthg){
    TestX = base_position_x + width_lenthg  ;  
    }
    if(PJ_position.y < base_position_y){ //mirem a on esta mes apro si adal o abaix
      TestY =  base_position_y;
    }
    else if(PJ_position.y > base_position_y + height_length){
       TestY =  base_position_y + height_length;
    }
    
    
    //get closes distance fomr edg 
    float ClosDisX = PJ_position.x -  TestX;
    float ClosDisY = PJ_position.y -  TestY;
    float Distanca = sqrt((ClosDisX*ClosDisX)+ (ClosDisY*ClosDisY));
   
    
    if(Distanca <= radios_Player){
    CurrentScean = scean.BOSS;
          PJ_position.x = width/2;
          PJ_position.y = height/2;
          PNJ1_position.x = width/2;
          PNJ1_position.y = height/2; 
          PNJ2_position.x = width/2;
          PNJ2_position.y = height/2;
    }
 

}
