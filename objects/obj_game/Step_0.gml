/// @description Insert description here
// You can write your code in this editor

if (room == rm_01) {
	if (keyboard_check_pressed(vk_anykey)) {
		room_goto_next();
	}
}
else if (room == rm_02) {
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
	else {
		var _is_collection_log_button_pressed = keyboard_check_pressed(ord("C"));
	
		if (_is_collection_log_button_pressed) {
				show_debug_message(_is_collection_log_button_pressed)
				view_collection_log = !view_collection_log;
				if (view_collection_log) {
					obj_crafter.is_crafting = false;
				}
		}
	
		var _total_creatures = array_length(obj_inventory.collectionLog.get_log());
		var _total_unlocked = obj_inventory.collectionLog.get_unlocked_count();
		if (_total_creatures == _total_unlocked) {
			make_fade = true;
		}
	}
}
else if (room == rm_03) {
	if (keyboard_check_pressed(vk_escape)) {
		game_end();
	}
	else if (keyboard_check_pressed(ord("R"))) {
		game_restart();
	}
}