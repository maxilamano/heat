/// @description Movimietno

//teclas movimiento
keyLeft         = keyboard_check(ord("A"));
keyRight        = keyboard_check(ord("D"));
keyJump         = keyboard_check_pressed(vk_space);
keyJumpRelease  = keyboard_check_released(vk_space);
keyShoot        = mouse_check_button(mb_left);
keyDash         = mouse_check_button_pressed(mb_right);
//variables movimiento
bolGround   = place_meeting(x,y+1,objBlock)
intMove     = keyRight-keyLeft;

//coords centro
intCenterX       = x //+ (sprite_width/2)
intCenterY       = y //+ (sprite_height/2)



//eje x
if(intMove!=0){
    if(abs(intSpeedX + (intAcc * intMove)) < intMaxSpeedX){
        if (!scrIsPositive(intSpeedX/intMove)){
            intSpeedX = intSpeedX*intGroundFricc +(intAcc*intMove)
        }
        else{
            intSpeedX += intAcc * intMove;
        }
    }
    else{
        intSpeedX = intMaxSpeedX * intMove;
    }
}
else{
    intSpeedX *= intGroundFricc;
}
x+=intSpeedX

//eje y
if (bolGround){
    intSpeedY = 0;
    if(keyJump){
        intSpeedY += intJumpForce
    }
}else{
    if(keyJumpRelease){
        intSpeedY *= 0.6
    }
    //gravedad
    if (abs(intSpeedY + intGravity)< intMaxSpeedY){
        intSpeedY += intGravity;
    }
    else intSpeedY = intMaxSpeedY
}

if (!place_meeting(x,y+intSpeedY,objBlock)){
    y+=intSpeedY;
}
else{
    repeat(abs(intSpeedY)){
        if(!place_meeting(x,y+1,objBlock)){
            y++
        }
        else break;
    }
}

//disparo
if(keyShoot and intRTLeft <= 0){
    instance_create_depth(objGun.x,objGun.y,4,objBullet)
    intRTLeft = intReloadTime;
	intDirection = point_direction(x,y,mouse_x,mouse_y);
	intSpeedX += (-lengthdir_x(intKnockback,intDirection));
	intSpeedY += (-lengthdir_y(intKnockback,intDirection));
	
	if(intSpeedY < 0 and bolGround){
		y --;
	}
	
	if (global.intTemperature + 5 < 100){
		global.intTemperature += 5; //subir temperatura
	}
	else{
		global.intTemperature = 100;//temperatura maxima
	}
		
}
else{
    if(intRTLeft > 0){
        intRTLeft--;
    }
}
