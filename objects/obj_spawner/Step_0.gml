/// @description Insert description here
// You can write your code in this editor

if (alarm[0] == -1) {
	var _spawned_creatures_alive = 0;
	with (target_creature_to_spawn) {
	if (parent_spawner == other) {
			_spawned_creatures_alive++
		}
	}

	if (_spawned_creatures_alive == 0) {
		alarm[0] = game_get_speed(gamespeed_fps) * 3
	}
}