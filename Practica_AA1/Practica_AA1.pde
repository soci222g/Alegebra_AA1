
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
   setUpPowers();
}



void draw(){
  background(255);
   
if(CurrentScean == scean.PLAYER_SELECT){
  textSize(Tamany_Text_escollirElements);
  textAlign(CENTER);
  text("Chose a Controler", width/2, height/4);
  text ("Mouse Controler - 0", width/2, height/2);
  text ("keyboard Controler - 1", width/2, height/1.75);
} 
  
  if(CurrentScean == scean.ENEMY_SELECT){
  textSize(Tamany_Text_escollirElements);
  textAlign(CENTER);
  text("Chose a number of enemies: ", width/2, height/4);
  text("Press Enter to continue.", width/2, height/3);
  }
  
  
  
   if(CurrentScean == scean.GAME_PLAY){
     GlobalTimer();  
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
        
        
        //powerUps
        if(PNJ2_activated){
        checkPowerUpCollision();
        drawPowers();
        }
        
        collisonWithEnemy();
        Atack();
        if(PNJ_hp <= 0 ){
           LooseHP();
           PNJ_hp = 3;
        }
        if(HP_Player <= 0){
         CurrentScean = scean.LOST;
        }
        if(countPowerUps == 3){
           drowPortal();
           collidePlayer();   
       }
   
   }
   
   if(CurrentScean == scean.BOSS){
     GlobalTimer(); 
     dorwSafePositions();
     spawn_walls();
     
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
        
        //collision
        collisionPlayerSafePoints();
        CollideWall();
        
        //logic game
        if(PNJ_hp <= 0 ){
           LooseHP();
           PNJ_hp = 3;
        }
        if(HP_Player <= 0){
         CurrentScean = scean.LOST;
        }
        if(CurrentSafe >= 4){
          CurrentScean = scean.WIN;
        }
        
   }
   
   if(CurrentScean == scean.WIN){
    textSize(Tamany_Text_escollirElements);
    textAlign(CENTER);
    text("You Win!!!", width/2, height/4);
    text("Press Enter to go to menu!!!", width/2, height/3);
    
    text("Score:  " , width/2, height/1.5);
    text(puntuacio_text, width-width/3, height/1.5);
   }

   if(CurrentScean == scean.LOST){
       textSize(Tamany_Text_escollirElements);
       textAlign(CENTER);
       text("You Lose!!!", width/2, height/4);
       text("Press Enter to go to menu!!!", width/2, height/3);
       text("Score:  " , width/2, height/1.5);
       
       text(puntuacio_text, width-width/3, height/1.5);

   } 
  
}






void printErrorChuseNumber(){
  
  textSize(Tamany_Text_escollirElements);
  textAlign(CENTER);
  text("ERROR: NON VALID NUMBER", width/2, height/2);
  
}
