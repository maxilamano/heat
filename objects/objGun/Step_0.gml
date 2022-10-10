///flecha
intGunAngle = point_direction(objPlayer.x,objPlayer.y,mouse_x,mouse_y); //angulo de la flecha

x = intGunX;
y = intGunY;

//pos x y de la flecha
if(point_distance(objPlayer.x,objPlayer.y,mouse_x,mouse_y) > intGunDistance){
	intGunX = objPlayer.x + lengthdir_x(intGunDistance,intGunAngle);
	intGunY = objPlayer.y + lengthdir_y(intGunDistance,intGunAngle);
}
else{
	intGunX = objPlayer.x + lengthdir_x(point_distance(objPlayer.x,objPlayer.y,mouse_x,mouse_y),intGunAngle);
	intGunY = objPlayer.y + lengthdir_y(point_distance(objPlayer.x,objPlayer.y,mouse_x,mouse_y),intGunAngle);
}

image_angle = intGunAngle  + intGunAngleOffset;

if(intGunAngle < 90 or intGunAngle > 270){
	image_yscale = -1;
}
else{
	image_yscale = 1;
}