/// @description Insert description here
// You can write your code in this editor

if (image_index == 7) {
	
	// Collision detected
	obj_game.player_health -= source.attack_damage
	obj_camera.shake = true;
	obj_game.can_heal = false;
	obj_game.alarm[2] = game_get_speed(gamespeed_fps) * 5
}