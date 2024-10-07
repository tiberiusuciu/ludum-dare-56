/// @description Insert description here
// You can write your code in this editor
if (can_heal) {
	player_health = min(player_health + heal_amount, player_max_health);
	alarm[3] = game_get_speed(gamespeed_fps) * 1;
}
