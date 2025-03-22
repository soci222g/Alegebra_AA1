int num_enemies;
int spawned_enemy;
int current_enemies;
//VARIABLES
boolean IsSpawned[];
boolean IsAlive[];
float x_pj, y_pj; //<>//
//int NUM_PNJ = 5;
float x_pnj[];//new float[NUM_PNJ]; //<>// //<>//
float y_pnj[];//new float[NUM_PNJ];
float alfa[];
int radius[];//new float[NUM_PNJ];

int enemy_radius;

  int savedTime;
  int totalTime = 5000;
  int passedTime;
//SETUP

void timer(){

   passedTime = millis() - savedTime;

  if (passedTime > totalTime) {
    println("5 seconds have passed!");
      savedTime = millis(); 
  }

}

  void setUpEnemies(){
  
  IsSpawned = new boolean[num_enemies];
  IsAlive = new boolean[num_enemies];
  
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
  } //<>//
}

//FUNCIONES
