/// @description Insert description here
// You can write your code in this editor
hspd = 0;
vspd = 0;
spd = 3;
max_life = 5;
life = max_life
attack_fatigue = false;
attack_rate = game_get_speed(gamespeed_fps) * 3;
//is_on_attacking_cooldown = false;
//cooldown_from_attacking = game_get_speed(gamespeed_fps) * 2;
attack_damage = 1;
parent_spawner = noone;
is_walking = false;
state = "wander";

common_drop = "Bone";
uncommon_drop = "Coin";
rare_drop = "";
common_sprite = spr_bone;
uncommon_sprite = spr_coin;
rare_sprite = noone;

attack_x_scale = 1;
attack_y_scale = 1;
attack_distance = 32;

depth = -y;