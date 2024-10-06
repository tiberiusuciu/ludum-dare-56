/// @description Insert description here
// You can write your code in this editor

if (player_health <= 0) {
	// dies
	obj_player.x = obj_player_spawn.x;
	obj_player.y = obj_player_spawn.y;
	player_health = player_max_health;
	has_died = true;
	alarm[1] = game_get_speed(gamespeed_fps) * 4;
	// maybe display what has been lost before
	
	
	obj_inventory.inventory._inventory_items = [];
}