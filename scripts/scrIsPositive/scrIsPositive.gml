/// @function scrIsPositive(num);
/// @param {num} number
function scrIsPositive(num){
	if (num == 0){
	    return false;
	}else{
	    if(num/abs(num)>0) return true
	    else return false
	}
}