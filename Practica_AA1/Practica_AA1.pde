
//General

scean CurrentScean;
PrintWriter output;

//player

 
 
 final int Tamany_Text_escollirElements = 50;
  final int Tamany_Text_escollirenemics = 30;


void setup(){
  //general elements (size, background
  
  savedTime = millis();
  
  size(600,600);
  background(255);


SetUp_element();
   setUpEnemies();
}



void draw(){
  background(255);
   
if(CurrentScean == scean.PLAYER_SELECT){
  textSize(Tamany_Text_escollirElements);
  textAlign(CENTER);
  text("Chose a Controles", width/2, height/4);
  text ("Mouse Controler - 0", width/2, height/2);
  text ("keyboard Controler - 1", width/2, height/1.75);

} 
  
  if(CurrentScean == scean.ENEMY_SELECT){
  textSize(Tamany_Text_escollirElements);
  textAlign(CENTER);
  text("Chose a number of enemies: ", width/2, height/4);
  text("pres enter to continue ", width/2, height/3);
  }
  
  
  
   if(CurrentScean == scean.GAME_PLAY){
        fill(0);
        
          if(isMouse == false){
            MoviemtnPlayerKeyboard();
          }
          else{
            MouseMovement();
          }
          MoimentPNJ1Alai();
          MoimentPNJ2Alai();
         
        PJ_position.x = constrain(PJ_position.x, 0, width);
        PJ_position.y = constrain(PJ_position.y, 0, height);  
     
        printPlayer();
        timer();
        if(spawned_enemy < num_enemies){
                spawnEnemies();
        }
        drawEnemies();
     
        
        collisonWithEnemy();
        Atack();
        if(PNJ_hp <= 0 ){
           LooseHP();
           PNJ_hp = 3;
        }
        if(HP_Player <= 0){
         CurrentScean = scean.LOST;
        }
        if(EnemyKilled >= num_enemies){
            CurrentScean = scean.WIN;
        }
        
        
        
   }
   if(CurrentScean == scean.WIN){
    textSize(Tamany_Text_escollirElements);
    textAlign(CENTER);
    text("You Win!!!", width/2, height/4);
   }

   if(CurrentScean == scean.LOST){
       textSize(Tamany_Text_escollirElements);
       textAlign(CENTER);
       text("you Lose!!!", width/2, height/4);
   }


  // moviment player
 // MoimentPNJ1Alai(); // moviment PNJ 1
  // MoviemtnPlayerKeyboardMoimentPNJ2Alai(); // Moviment PNJ 2









//printantge Player
 
  
  
  
  
  
  
}






void printErrorChuseNumber(){

  textSize(Tamany_Text_escollirElements);
  textAlign(CENTER);
  text("ERROR: NUMERO NO VALIDO", width/2, height/2);
  
}


/*
void activatePNJ(boolean PNJActivate){

  PNJActivate = true;
}

*/


//moviment PNJ 2
