// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
#region Vector Structure

function vector(_vector) constructor {
	x = _vector[0];
	y = _vector[1];
	vec = [x, y];
	static set = function(_vector){
		x = _vector[0];
		y = _vector[1];
		vec = [x, y];
	}
	static add = function(_vector){
		x += _vector[0];
		y += _vector[1];
		vec = [x, y];
	}
	static subtract = function(_vector){
		x -= _vector[0];
		y -= _vector[1];
		vec = [x, y];
	}
	static multiply = function(_scalar){
		x = x*_scalar;
		y = y*_scalar;
		vec = [x, y];
	}
	static divide = function(_scalar){
		x = x/_scalar;
		y = y/_scalar;
		vec = [x, y];
	}
}

#endregion

#region Vector Return Math

function vadd(v1, v2){
	return([v1[0] + v2[0], v1[1] + v2[1]]);
}
function vsubtract(v1, v2){
	return([v1[0] - v2[0], v1[1] - v2[1]]);
}
function vmultiply(v1, s){
	return([v1[0]*s, v1[1]*s]);
}
function vdivide(v1, s){
	return([v1[0]/s, v1[1]/s]);
}

#endregion