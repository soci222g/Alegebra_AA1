
float LastSaveTimer;
final int EndTimer = 120000;
float currentTimer;


void GlobalTimer(){

   LastSaveTimer = millis() - currentTimer;

  if (LastSaveTimer > EndTimer) {
      currentTimer = millis(); 
      LooseHP();
  }
  

}
