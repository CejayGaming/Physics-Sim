/// @description Penis Script
F.set([0, -g*m]);
testPos.set(vadd(vdivide(vdivide(F.vec, m), room_speed), v.vec));
testPos.set(vadd([testPos.x, -testPos.y], [x, y]));
if(place_meeting(testPos.x, testPos.y, obj_ground)){
	var _y = y;
	while(!place_meeting(testPos.x, y, obj_ground)){
		y += 1;
	}
	y -= 1;
	var deltaY = abs(y-_y);
	y = _y;
	F.set([F.x, (deltaY-v.y/60)/1800*m]);
}
a.set(vdivide(F.vec, m));
v.add(vdivide(a.vec, room_speed));
x += v.x;
y -= v.y;