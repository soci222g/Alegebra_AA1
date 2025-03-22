int num_enemies;
int spawned_enemy;
int current_enemies;
//VARIABLES
boolean IsSpawned[];
boolean IsAlive[];
boolean canAtack[];

float x_pj, y_pj; //<>// //<>//
//int NUM_PNJ = 5;
float x_pnj[];//new float[NUM_PNJ]; //<>// //<>// //<>//
float y_pnj[];//new float[NUM_PNJ];
float alfa[];
int radius[];//new float[NUM_PNJ];

int enemy_radius;

//spawn timer
  int savedTime;
  int totalTime = 5000; //5 segons entre spawns
  int passedTime;
  
  
  //atack timer
  int savedTimeAtack;
  int totalTimeAtack = 3000; //5 segons entre spawns
  int passedTimeAtack;
//SETUP

void timer(){

   passedTime = millis() - savedTime;

  if (passedTime > totalTime) {
      savedTime = millis(); 
  }

}

  void setUpEnemies(){
  
  IsSpawned = new boolean[num_enemies];
  IsAlive = new boolean[num_enemies];
  canAtack = new boolean[num_enemies];
  
  x_pnj = new float[num_enemies];
  y_pnj = new float[num_enemies];
  alfa = new float[num_enemies];
  
  enemy_radius = 50;

}

void spawnEnemies(){
  if(passedTime > totalTime)
  {
      int PlaceSpawn = int(random(1,4));
    
        switch(PlaceSpawn){
        case 1:
        x_pnj[spawned_enemy] = width* 0.5;
        y_pnj[spawned_enemy] = 0;
        break;
           case 2:
        x_pnj[spawned_enemy] = width* 0.5;
        y_pnj[spawned_enemy] = height;
        break;
           case 3:
        x_pnj[spawned_enemy] = 0;
        y_pnj[spawned_enemy] = height * 0.5;
        break;
           case 4:
        x_pnj[spawned_enemy] = width;
        y_pnj[spawned_enemy] = height * 0.5;
        break;
        }
    
    
   
        
        alfa[spawned_enemy] = random(-0.05, 0.05); //random(-0.01,3.0);
        IsAlive[spawned_enemy] = true;
        canAtack[spawned_enemy] = true;
        spawned_enemy++;
        current_enemies++;
      }   
              
  
}
//DRAW

void drawEnemies(){
  
  
  
  for(int i = 0; i < spawned_enemy; i++){ //  for(int i = 0; i < NUM_PNJ; i++){
    x_pnj[i] = (1.0 - alfa[i]) *x_pnj[i] + alfa[i] * PNJ2_position.x;
    y_pnj[i] = (1.0 - alfa[i]) *y_pnj[i] + alfa[i] * PNJ2_position.y;
    
    // Limitar la posición dentro de la pantalla
        x_pnj[i] = constrain(x_pnj[i], 0, width);
        y_pnj[i] = constrain(y_pnj[i], 0, height);
  }
  
  //Pintarlo
  //PNJ
  for(int i = 0; i < spawned_enemy; i++){ //  for(int i = 0; i < NUM_PNJ; i++){
      if(IsAlive[i] == true){
          fill(255,0,255);
          ellipse(x_pnj[i],y_pnj[i],width/10.0,height/10.0);
      }  
  } //<>// //<>//
}


void timerAtack(){

   passedTimeAtack = millis() - savedTimeAtack;

  if (passedTimeAtack > totalTimeAtack) {
      savedTimeAtack = millis(); 
  }

}

void Atack(){ //esta mig bug

   for(int i = 0; i < spawned_enemy; i++){ 
     if(canAtack[i] == true){
     
      PVector CollDistance = new PVector(x_pnj[i] - PNJ2_position.x, y_pnj[i] - PNJ2_position.y);
      float Distance_moculo = sqrt(CollDistance.x*CollDistance.x + CollDistance.y * CollDistance.y);
  
  
  
     if(Distance_moculo <= PNJ2_radius*2 &&  canAtack[i] == true){
       println("damages");
       takeDamage(); 
       canAtack[i] = false;
        
      }
     }
         
     
     else{
       timerAtack();
       if(passedTimeAtack >= totalTimeAtack){
         canAtack[i] = true;
       }
     }
   
   
  }
}


//FUNCIONES
