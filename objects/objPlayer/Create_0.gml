/// @description Variables


//movimiento
intSpeedX = 0;
intSpeedY = 0;
intAcc = 0.7;
intGroundFricc = 0.6;
intDashFricc = 0.7;
intMaxSpeedX = 10;
intMaxSpeedY = 10;
intGravity = 0.8;
intJumpForce = -10;

//disparo
intReloadTime = 10; //tiempo de recarga para volver a disparar (total, en fotogramas)
intRTLeft = 0; //tiempo restante para volver a disparar (en fotogramas)
intKnockback = 10;//retroceso del disparo

bolGround = false;


//debug
global.debugMode = true;


//Objetos
instance_create_depth(x,y,depth-1,objGun)
 