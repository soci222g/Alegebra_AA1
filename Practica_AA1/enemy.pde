int num_enemies = 20;

//VARIABLES
float x_pj, y_pj;
int NUM_PNJ = 5;
float x_pnj[] = new float[NUM_PNJ];
float y_pnj[] = new float[NUM_PNJ];
float alfa[] = new float[NUM_PNJ];

//SETUP
void setup(){
  //Ventana
  size(700,700);
  
  for(int i = 0; i < NUM_PNJ; i++){
    x_pnj[i] = width/random(1.0,3.0);
    y_pnj[i] = height/random(1.0,3.0);
 //10 pasitos entre el PNJ y el PJ (alfa entre 0 y 1 para poder perseguir, si la ponemos en negativo huye)
    alfa[i] = random(-0.01,3.0);
  }
  
  //Posición inicial del PNJ en medio de la ventana

}
//DRAW
void draw(){
  //Empezamos borrando el fondo de la ventana
  background(255,255,255); //FONDO DE COLOR BLANCO (92,44,120)
  //PNJ persigue a PJ
  x_pj = mouseX;
  y_pj = mouseY;
  //Calculos
  //Ecuacion parametrica de la recta: p(alfa)=PNJ+alfa*PNJ --> p(alfa) = (1-alfa)*PNJ + alfa*PJ
  
  for(int i = 0; i < NUM_PNJ; i++){
    x_pnj[i] = (1.0 - alfa[i]) *x_pnj[i] + alfa[i] * x_pj;
    y_pnj[i] = (1.0 - alfa[i]) *y_pnj[i] + alfa[i] * y_pj;
  }
  
  //Pintarlo
  //PNJ
  for(int i = 0; i < NUM_PNJ; i++){
    fill(255,0,255);
    ellipse(x_pnj[i],y_pnj[i],width/10.0,height/10.0);
  }
  //fill(255,0,0); //<>//
  //ellipse(x_pnj[0],y_pnj[0],width/10.0,height/10.0);
  ////ellipse(x_pnj2,y_pnj2,width/10.0,height/10.0);
  //////PNJ2
  //fill(92,44,120);
  //ellipse(x_pnj[1],y_pnj[1],width/15.0,height/15.0);
  ////ellipse(x_pnj2,y_pnj2,width/15.0,height/15.0);
  //////PNJ3
  //fill(0,0,0);
  //ellipse(x_pnj[2],y_pnj[2],width/10.0,height/10.0);
  ////ellipse(x_pnj3,y_pnj3,width/20.0,height/20.0);
  ////PNJ4
  //fill(0,255,255);
  //ellipse(x_pnj[3],y_pnj[3],width/10.0,height/10.0);
  ////ellipse(x_pnj4,y_pnj4,width/1.0,height/1.0);
  ////PNJ5
  //fill(0,0,255);
  //ellipse(x_pnj[4],y_pnj[4],width/20.0,height/20.0);
  ////ellipse(x_pnj5,y_pnj5,width/2.0,height/2.0);
  ////PJ
  //fill(0,255,0);
  //ellipse(x_pj,y_pj,width/5.0,height/5.0);
}
//FUNCIONES
