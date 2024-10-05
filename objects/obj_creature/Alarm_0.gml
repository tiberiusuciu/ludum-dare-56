/// @description Walking logic
// You can write your code in this editor
hspd = random_range(-1, 1) * spd;
vspd = random_range(-1, 1) * spd;
is_walking = true;
alarm[1] = game_get_speed(gamespeed_fps) * random_range(1, 1.5)