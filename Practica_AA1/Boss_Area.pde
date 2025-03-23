//punts que as de agafar perque guanys
final int NUM_OF_SAVEPOINTS = 4; 
int CurrentSafe;


float[] Pos_safe_x;
float[] Pos_safe_y;
boolean[] isSaveActivated;
int radius_SafePoint;


PVector[] deadlyCubesPosition;
boolean[] activate;
int[] width_lenthg_ostacles;
int[] height_lenthg_ostacles;


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
    Pos_safe_y[1] = height - height/6;
//safe point 3
    Pos_safe_x[2] =  width * 0.85;
    Pos_safe_y[2] = height / 6;
    //safe point 4
    Pos_safe_x[3] = width * 0.85;
    Pos_safe_y[3] = height - height / 12;
    
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
        println(CurrentSafe);
        
      }
      
      
    }

}
