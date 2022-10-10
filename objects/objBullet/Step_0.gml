/// @description Disparo
x+= intSpeedX
y+= intSpeedY

if((x<0-sprite_width or x> room_width+sprite_width) or (y<0-sprite_height or y>room_height+sprite_height)){
    //global.intBulletsOnScreen -- //quitar bala del contador
    instance_destroy(self);
}

