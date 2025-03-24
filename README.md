# Alegebra_AA1

- Nombres completos de integrantes del equipo

Máximo Albero Fernández y Jordi Gratacòs Gamper


- Explicación del juego (funcionalidades, decisiones tomadas, etc)
Explicación Boss final:
El boss final consiste en un laberinto en el que el jugador tiene que recoger 4 gemas en las esquinas del mapa para poder ganar la partida.
Para llegar hasta ellas hay que ir esquivando las paredes del laberinto, que si las tocas mueres.


Explicación PowerUps i PowerDowns:
Los PowerUps i los PowerDowns afectan a 2 aspectos: el tamaño y la velocidad. Algunos afectan al jugador, otros a los enemigos y otros a los aliados.
Los PowerUps aumentaran la velocidad del jugador y los aliados, aumentaran su tamaño y reduciran el tamaño de los enemigos.
Los PowerDowns reduciran la velocidad del jugador o la de los aliados y aumentaran el tamaño de los enemigos.


Maquina de estados/controlador de escenas:
Para tener un control de las escenas hemos decidido crear un enum con todas las escenas y en funcion de en que escena nos encontremos, se printeara una pantalla u otra
y la logica de la escena cambia.
Por ejemplo, en la primera escena el juego solo acepta 2 inputs que son el 1 y el 0 para determinar el control, pero en la siguiente escena solo acepta numeros para determinar
la cantidad de enemigos que apareceran en la partida.

Gameplay:
Después de seleccionar el tipo de control que se quiere utilizar y la cantidad de enemigos que aparecerán en la partida, el jugador sera libre de moverse por la pantalla,
donde tendra que cazar a los enemigos que aparecen en el nivel para que no maten a su aliado, además debera recoger los PowerUps que hay repartidos por el nivel para
que aparezca el portal que lo llevará hasta el nivel del jefe. Cómo ya se ha dicho anteriormente, el jefe se trata de un laberinto donde hay que tratar de no chocarse con las
paredes y recoger las gemas que se encuentran en cada esquina de la pantalla. Si se logra esto, el jugador se habrá pasado el juego, sino, morirá y podra volver a repetirlo;
En caso de querer volver a jugar también se puede repetir sin tener que salir del juego.

- Instrucciones para jugar (menús, teclas, etc)
En el primer menú hay que escoger el tipo de control que se quiere utilizar:
 - 0 Ratón
 - 1 Teclado
En el segundo menú hay que seleccionar la cantidad de enemigos que irán apareciendo en medio de la partida

Controles:
 Ratón/WASD para controlar al personaje.

- Librerías que se han empleado, que hay que incluir y para qué
No se ha empleado ninguna liberia externa, asi que no hay que incluir nada.

- Descripción concreta de lo que ha hecho cada persona del equipo

Jordi se ha encargado de realizar todo lo relacionado con el nivel del boss, los pnjs aliados y el player y el portal, además de los inputs y del scene manager
Máximo se ha encargado de realizar todo lo relacionado con los enemigos, los PowerUps y PowerDowns y la pantalla de juego inicial

- Postmortem (reflexión crítica post proyecto):
En relación a aspectos técnicos y de trabajo en equipo
-- Lo que SI ha ido bien
Hemos logrado realizar el juego sin la necesidad de utilizar librerias externas.
Trabajamos bien en equipo y nos hemos podido ayudar entre nosotros si nos encontrabamos con algun problema.
Hemos mantenido una buena organización en el proyecto, separando el codigo en diferentes apartados que nos ha permitido trabajar de forma organizada y que no se mezclasen
codigos de mala manera.

-- Lo que NO tanto y podemos mejorar 
Hay algunos requerimientos de la práctica que no hemos podido realizar, ya que no hemos logrado encontrar la manera de hacer que funcionen correctamente.

Principalmente en lo que más hemos fallado ha sido en la organización del trabajo. No hemos sido muy constantes a la hora de trabajar en la práctica y hemos ido postergandolo
hasta que nos hemos puesto a trabajar en serio, hecho que ha afectado precisamente a los requerimientos que no hemos podido hacer.