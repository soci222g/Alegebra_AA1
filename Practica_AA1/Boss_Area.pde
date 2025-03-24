//punts que as de agafar perque guanys
final int NUM_OF_SAVEPOINTS = 4; 
int CurrentSafe;


float[] Pos_safe_x;
float[] Pos_safe_y;
boolean[] isSaveActivated;
int radius_SafePoint;



final int NumberOfWalls = 10;


int[] wall_x;
int[] wall_y;
int[] width_lenthg_ostacles;
int[] height_lenthg_ostacles;


//polayer up,down,Left,Right






void Setup_safePositions(){ //setup inicial
  CurrentSafe = 0;
   
    Pos_safe_x = new float[NUM_OF_SAVEPOINTS];
    Pos_safe_y = new float[NUM_OF_SAVEPOINTS];
    isSaveActivated = new boolean[NUM_OF_SAVEPOINTS];
    radius_SafePoint = 10;   
    
}

void Spawn_SafePoints(){
  
  //farem el set up del spawn a ma per aixir tenir mes control sobra on estan els punts a recollir i poder montar el nivell
    //safe point 1
    Pos_safe_x[0] = width / 12;
    Pos_safe_y[0] = height / 12;
    //safe point 2
    Pos_safe_x[1] = width / 12;
    Pos_safe_y[1] = height - height/3;
//safe point 3
    Pos_safe_x[2] =  width * 0.95;
    Pos_safe_y[2] = height / 5;
    //safe point 4
    Pos_safe_x[3] = width * 0.85;
    Pos_safe_y[3] = height - height / 20;
    
    for(int i = 0; i< NUM_OF_SAVEPOINTS; i++){
        isSaveActivated[i] = true;
    }

}

void dorwSafePositions(){ //<>//
     fill(0,255,0);
     for(int i = 0; i< NUM_OF_SAVEPOINTS; i++){
       if(isSaveActivated[i] == true)
       ellipse(Pos_safe_x[i], Pos_safe_y[i],radius_SafePoint,radius_SafePoint);
    }
}


void collisionPlayerSafePoints(){
    for(int i = 0; i < NUM_OF_SAVEPOINTS; i++){
      PVector CollDistance = new PVector(Pos_safe_x[i] - PJ_position.x, Pos_safe_y[i] - PJ_position.y);
      float Distance_moculo = sqrt(CollDistance.x*CollDistance.x + CollDistance.y * CollDistance.y);
      
      
      if(Distance_moculo <= radius_SafePoint && isSaveActivated[i] == true){
        isSaveActivated[i] = false;
        CurrentSafe++;
        addPuntuacio();
        println(CurrentSafe);
        
      }
      
      
    }

}

//collisones paredes

void Setup_Walls(){
  
  wall_x = new int[NumberOfWalls];
  wall_y = new int[NumberOfWalls];
  width_lenthg_ostacles = new int[NumberOfWalls];
   height_lenthg_ostacles = new int[NumberOfWalls];
   
   
    //donem valors vase perque aixi podem fer tans com bolgem i despres ja'sajustera el numero de parets
    for(int i = 0; i <NumberOfWalls; i++){
        wall_x[i] = 0;
        wall_y[i] = 0;
        width_lenthg_ostacles[i] = 0;
        height_lenthg_ostacles[i] = 0;
    }
    
}

void spawn_walls(){
    //wall 1
   wall_x[0] = int(width*0.5); //spawn
   wall_y[0] = int(height*0.20);
   width_lenthg_ostacles[0] = int(width*0.33); //gandaria
   height_lenthg_ostacles[0] = int(height*0.4);
  
    //wall 1
   wall_x[1] = int(width*0.5);
   wall_y[1] = int(height*0.80);
   width_lenthg_ostacles[1] = int(width*0.33);
   height_lenthg_ostacles[1] = int(height*0.45);

    
   wall_x[2] = int(width*0.22);
   wall_y[2] = int(height*0.60);
   width_lenthg_ostacles[2] = 45;
   height_lenthg_ostacles[2] = 350;
   
   
    
   wall_x[3] = int(width*0.13);
   wall_y[3] = int(height*0.35);
   width_lenthg_ostacles[3] = 160;
   height_lenthg_ostacles[3] = 150;
   
   
   wall_x[4] = int(width*0.94);
   wall_y[4] = int(height*0.5);
   width_lenthg_ostacles[4] = 175;
   height_lenthg_ostacles[4] = 150;
   
   wall_x[5] = int(width*0.84);
   wall_y[5] = int(height*0.25);
   width_lenthg_ostacles[5] = 50;
   height_lenthg_ostacles[5] = 150;
   
   
   wall_x[6] = int(width*0.79);
   wall_y[6] = int(height*0.75);
   width_lenthg_ostacles[6] = 150;
   height_lenthg_ostacles[6] = 25;
     
   wall_x[7] = int(width*0.90);
   wall_y[7] = int(height*0.90);
   width_lenthg_ostacles[7] = 150;
   height_lenthg_ostacles[7] = 25;
     
   for(int i = 0; i <NumberOfWalls; i++){
     fill(255,0,0);
     rect( wall_x[i],  wall_y[i], width_lenthg_ostacles[i], height_lenthg_ostacles[i]);
   }

  
}

void CollideWall(){
   
  for(int i = 0; i < NumberOfWalls; i++){
  
   float base_position_x = wall_x[i] - width_lenthg_ostacles[i]*0.5; //posem la pater esquerra
   float base_position_y = wall_y[i] - height_lenthg_ostacles[i]*0.5; //posem la parte de adal
 
   float TestX = PJ_position.x;
   float TestY = PJ_position.y;
      
    
    if(PJ_position.x <  base_position_x){ //mirem si esta mes aprop la dreta o la esquera
        TestX = base_position_x;
    }
    else if( PJ_position.x > (base_position_x + width_lenthg_ostacles[i])){
      TestX = base_position_x + width_lenthg_ostacles[i];  
    }
    if(PJ_position.y < base_position_y){ //mirem a on esta mes apro si adal o abaix
      TestY =  base_position_y;
    }
    else if(PJ_position.y > (base_position_y + height_lenthg_ostacles[i])){
       TestY =  base_position_y + height_lenthg_ostacles[i];
    }
    
    
    //get closes distance fomr edg 
    float ClosDisX = PJ_position.x -  TestX;
    float ClosDisY = PJ_position.y -  TestY;
    float Distanca = sqrt((ClosDisX*ClosDisX)+ (ClosDisY*ClosDisY));
   ; 
    
    if(Distanca <= radios_Player){
        takeDamage(); 
    }
   
  }
  
  
  
}
