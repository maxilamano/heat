/// @description Bajo de temperatura


if(global.intTemperature - intFreezeRate > 0){
	global.intTemperature -= intFreezeRate
}
else{
	global.intTemperature = 0;
}


