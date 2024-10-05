/// @description Insert description here
// You can write your code in this editor

if (state == "wander" && !is_walking && alarm[0] == -1) {
	alarm[0] = game_get_speed(gamespeed_fps) * random_range(2, 5)	
}

if (place_meeting(x + hspd, y, obj_solid)) {
	while (!place_meeting(x + sign(hspd), y, obj_solid)) {
		x += sign(hspd);
	}
	hspd = 0;
}

// Vertical collisions
if (place_meeting(x, y + vspd, obj_solid)) {
	while (!place_meeting(x, y + sign(vspd), obj_solid)) {
		y += sign(vspd);
	}
	vspd = 0;
}

if (sign(hspd) == -1) {
	image_xscale = -1;
}
else if (sign(hspd) == 1) {
	image_xscale = 1;
}


x += hspd;
y += vspd;

if (!is_walking) {
	hspd = 0;
	vspd = 0;
}