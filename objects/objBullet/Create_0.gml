/// @description Variables

intSpeed = 5;
intSpeed += global.intTemperature/10;
intMouseX = mouse_x
intMouseY = mouse_y
intDirection = point_direction(x,y,intMouseX,intMouseY)
intSpeedX = lengthdir_x(intSpeed,intDirection) + objPlayer.intSpeedX /2;
intSpeedY = lengthdir_y(intSpeed,intDirection) + objPlayer.intSpeedY /2;

image_xscale = 1 - global.intTemperature/100 + 0.5;
image_yscale = 1 - global.intTemperature/100 + 0.5;

