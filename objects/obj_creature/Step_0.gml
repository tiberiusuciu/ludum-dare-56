
/// @description Insert description here
// You can write your code in this editor

if (state == "wander" && !is_walking && alarm[0] == -1) {
	alarm[0] = game_get_speed(gamespeed_fps) * random_range(.5, 5)	
}

if (abs(x - obj_player.x) >= 320 ||  abs(y - obj_player.y) >= 320) {
	state = "wander";
}

if (state == "attack") {
	var _mx = obj_player.x;
	var _my = obj_player.y;
	var _angle = point_direction(x, y, _mx, _my);
	var _attack_x = x + lengthdir_x(32, _angle); // 32 is the distance from the player
	var _attack_y = y + lengthdir_y(32, _angle) - 10;
	if (!attack_fatigue) {
		var _attack = instance_create_layer(_attack_x, _attack_y, "Instances", obj_enemy_attack);
		_attack.source = self;
		_attack.image_angle = _angle;
		attack_fatigue = true;
		alarm[2] = attack_rate;
	} else if (attack_fatigue && (hspd == 0 && vspd == 0) && (abs(x - obj_player.x) >= 32 || abs(y - obj_player.y) >= 32)) {
		hspd = lengthdir_x(spd * .25, _angle);
		vspd = lengthdir_y(spd * .25, _angle);
	}
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