/// @description Insert description here
depth = -y;

var _right = keyboard_check(ord("D")) || keyboard_check(vk_right);
var _left = keyboard_check(ord("A")) || keyboard_check(vk_left);
var _up = keyboard_check(ord("W")) || keyboard_check(vk_up);
var _down = keyboard_check(ord("S")) || keyboard_check(vk_down);
var _run_pressed = keyboard_check(vk_shift)
var _attack_pressed = mouse_check_button(mb_left)

// var leftClick = mouse_check_button_pressed(mb_left);
// var rightClick = mouse_check_button_pressed(mb_right);

hspd += (_right - _left) * spd;
vspd += (_down - _up) * spd;

if (_run_pressed && (hspd != 0 || vspd != 0)) {
	if (obj_game.player_stamina > 0 && !obj_game.player_run_stutter) {
		hspd *= run_spd_multiplier
		vspd *= run_spd_multiplier
		obj_game.player_stamina -= obj_game.player_stamina_drain
		if (obj_game.player_stamina < 0) {
			obj_game.player_stamina = 0;
		}
	}
}


if (obj_game.player_stamina == 0) {
	if (obj_game.alarm[0] == -1) {
		obj_game.player_run_stutter = true;
		obj_game.alarm[0] = game_get_speed(gamespeed_fps) * 2;
	}
}

obj_game.player_stamina += obj_game.player_stamina_regen



if (obj_game.player_stamina > obj_game.player_max_stamina) {
	obj_game.player_stamina = obj_game.player_max_stamina
}

if (_attack_pressed && !attack_fatigue && !obj_crafter.is_crafting) {
	var _mx = mouse_x;
	var _my = mouse_y;
	var _angle = point_direction(x, y, _mx, _my);
	var _attack_x = x + lengthdir_x(32, _angle); // 32 is the distance from the player
	var _attack_y = y + lengthdir_y(32, _angle) - 16;
	var _attack = instance_create_layer(_attack_x, _attack_y, "Instances", obj_player_attack);
	//_attack.direction = _angle;
	_attack.image_angle = _angle;
	attack_fatigue = true;
	alarm[0] = attack_rate;
}

// Animations
if (hspd != 0 || vspd != 0) {
	image_speed = 1;
	if (sign(hspd) == -1) {
		image_xscale = -1;
	}
	else if (sign(hspd) == 1) {
		image_xscale = 1;
	}
}
else {
	image_index = 0;
	image_speed = 0;
}


// Horizontal collisions
// x + hspd < sprite_width / 2 || x + hspd > room_width - sprite_width / 2
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

x += hspd;
y += vspd;
hspd = 0;
vspd = 0;