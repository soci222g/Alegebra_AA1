int num_powers = 6;
int powerUp;
PVector PowerPosition[];
boolean powerUpActive []; // True cuando el power-up está disponible
boolean collected[]; // Controla si ya se recogió el power-up
float distancia;
float powerups_radius = 20;
int countPowerUps = 0;

int old_radios_Player;
float old_PJ_speed;
int old_enemy_radius;
float old_PNJ1_Speed;
float old_PNJ2_Speed;


float powerUpTimers[]; // Array para almacenar los tiempos de los power-ups activos
final int powerUpDuration = 5000;// Duración del power-up en milisegundos (5 segundos)

void powerUps(int index){
  
  switch(index){
    case 0:
      countPowerUps++;
      radios_Player = 30;
      break;
    case 1:
      countPowerUps++;
      PJ_speed = 0.01; //mes rapid
      break;  
    case 2:
      countPowerUps++;
      enemy_radius = 20; //enemics mes petits
      break;
    case 3: //radi enemic més gran
      enemy_radius = 70;
    break;
    case 4: //player mes lent
      PJ_speed = 0.001;
    break;
    case 5: //pnjs mes lents
      PNJ1_Speed = 0.001;
      PNJ2_Speed = 0.001;
    break;
  }
  
  // Guardar el tiempo cuando se recoge el power-up
  powerUpTimers[index] = millis(); // Inicia el temporizador para este power-up
}

void resetStats(){
    radios_Player = old_radios_Player;
    PJ_speed = old_PJ_speed;
    enemy_radius = old_enemy_radius;
    PNJ1_Speed = old_PNJ1_Speed;
    PNJ2_Speed = old_PNJ2_Speed;
}

void setUpPowers(){
    
    old_radios_Player = radios_Player;
    old_PJ_speed = PJ_speed;
    old_enemy_radius = enemy_radius;
    old_PNJ1_Speed = PNJ1_Speed;
    old_PNJ2_Speed = PNJ2_Speed;
  
    PowerPosition = new PVector[num_powers];
    powerUpActive = new boolean[num_powers];
    collected = new boolean[num_powers];
    powerUpTimers = new float[num_powers];
    
    for (int i = 0; i < num_powers; i++) {
        PowerPosition[i] = new PVector(random(width), random(height));
        powerUpActive[i] = true; // Todos los power-ups están activos al inicio
        collected[i] = false;
        powerUpTimers[i] = -1; // Inicializa los temporizadores como -1 (sin power-up activo)
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

// Función para actualizar los temporizadores de los power-ups
void updatePowerUpTimers() {
    for (int i = 0; i < num_powers; i++) {
        if (collected[i]) { // Si el power-up ha sido recogido
            // Verifica si el tiempo ha pasado (se compara con el tiempo actual)
            if (millis() - powerUpTimers[i] > powerUpDuration) {
                revertPowerUpEffect(i); // Revierte los efectos del power-up
                collected[i] = false; // El power-up ya no está activo
                powerUpTimers[i] = -1; // Reinicia el temporizador
            }
        }
    }
}

void revertPowerUpEffect(int index) {
    // Revertir los efectos de los power-ups después de que expire el tiempo
    switch(index){
        case 0:
            radios_Player = old_radios_Player; // Restablecer el radio del jugador
            break;
        case 1:
            PJ_speed = old_PJ_speed; // Restablecer la velocidad del jugador
            break;  
        case 2:
            enemy_radius = old_enemy_radius; // Restablecer el tamaño de los enemigos
            break;
        case 3:
            enemy_radius = old_enemy_radius; // Restablecer el tamaño de los enemigos
            break;
        case 4:
            PJ_speed = old_PJ_speed; // Restablecer la velocidad del jugador
            break;
        case 5:
            PNJ1_Speed = old_PNJ1_Speed; // Restablecer la velocidad de PNJ1
            PNJ2_Speed = old_PNJ2_Speed; // Restablecer la velocidad de PNJ2
            break;
    }
}

void drawPowers(){
        for(int i = 0; i < num_powers; i++){
        if (powerUpActive[i]) { // Solo dibuja el power-up si está activo
            fill(0, 0, 0);
            ellipse(PowerPosition[i].x, PowerPosition[i].y, powerups_radius, powerups_radius);
        }
    }
    updatePowerUpTimers();
}
