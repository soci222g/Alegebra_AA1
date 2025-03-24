int num_powers = 6;
int powerUp;
PVector PowerPosition[];
boolean powerUpActive []; // True cuando el power-up está disponible
boolean collected[]; // Controla si ya se recogió el power-up
float distancia;
float powerups_radius = 20;


void powerUps(int index){
  
  switch(powerUp){
    case 0:
      background(0);
      radios_Player = 30;
      break;
    case 1:
      background(0);
      radios_Player = 50; //mes rapid
      break;  
    case 2:
      background(0);
      //enemy_radius = 20; //enemics mes petits
      break;
    case 3: //radi enemic més gran
      background(0);
      //enemy_radius = 70;
    break;
    case 4: //player mes lent
      background(0);
      //enemy_radius = 70;
    break;
    case 5: //pnjs mes lents
      background(0);
      //enemy_radius = 70;
    break;
  }
}

void setUpPowers(){
   
    PowerPosition = new PVector[num_powers];
    powerUpActive = new boolean[num_powers];
    collected = new boolean[num_powers];

    for (int i = 0; i < num_powers; i++) {
        PowerPosition[i] = new PVector(random(width), random(height));
        powerUpActive[i] = true; // Todos los power-ups están activos al inicio
        collected[i] = false;
    }
 
}

void checkPowerUpCollision() {
    for (int i = 0; i < num_powers; i++) {
        if (powerUpActive[i]) { 
            distancia = dist(PowerPosition[i].x, PowerPosition[i].y, PJ_position.x, PJ_position.y);
            
            if (distancia < radios_Player + powerups_radius) { 
                powerUps(i); // Aplica el efecto del power-up correspondiente
                println("Power number: ", i);

                powerUpActive[i] = false; // Desactiva este power-up
                collected[i] = true;
                addPuntuacio();
            }
        }
    }
}

void drawPowers(){
        for(int i = 0; i < num_powers; i++){
        if (powerUpActive[i]) { // Solo dibuja el power-up si está activo
            fill(0, 0, 0);
            ellipse(PowerPosition[i].x, PowerPosition[i].y, powerups_radius, powerups_radius);
        }
    }
        
}
