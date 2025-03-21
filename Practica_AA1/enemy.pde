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
float alfa[]; //new float[NUM_PNJ];


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

}

void spawnEnemies(){
  if(passedTime > totalTime)
  {
      
        x_pnj[spawned_enemy] = width/random(1.0,3.0);
        y_pnj[spawned_enemy] = height/random(1.0,3.0);
        
        alfa[spawned_enemy] = random(-0.05, 0.05); //random(-0.01,3.0);
        IsAlive[spawned_enemy] = true;
        spawned_enemy++;
      }   
            
    
    
    
  
}
//DRAW

void drawEnemies(){
  //Empezamos borrando el fondo de la ventana
  //PNJ persigue a PJ
  //x_pj = mouseX;
  //y_pj = mouseY;
  //Calculos
  //Ecuacion parametrica de la recta: p(alfa)=PNJ+alfa*PNJ --> p(alfa) = (1-alfa)*PNJ + alfa*PJ
  
  for(int i = 0; i < num_enemies; i++){ //  for(int i = 0; i < NUM_PNJ; i++){
    x_pnj[i] = (1.0 - alfa[i]) *x_pnj[i] + alfa[i] * PJ_position.x;
    y_pnj[i] = (1.0 - alfa[i]) *y_pnj[i] + alfa[i] * PJ_position.y;
    
    // Limitar la posición dentro de la pantalla
        x_pnj[i] = constrain(x_pnj[i], 0, width);
        y_pnj[i] = constrain(y_pnj[i], 0, height);
  }
  
  //Pintarlo
  //PNJ
  for(int i = 0; i < num_enemies; i++){ //  for(int i = 0; i < NUM_PNJ; i++){
    fill(255,0,255);
    ellipse(x_pnj[i],y_pnj[i],width/10.0,height/10.0);
  } //<>//
}

//FUNCIONES
