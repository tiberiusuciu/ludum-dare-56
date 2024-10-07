/// @description Insert description here
// You can write your code in this editor

damage = 1;
attack_rate = game_get_speed(gamespeed_fps) * 1;
attack_fatigue = false;
x_bias = random_range(3, 7)
y_bias = random_range(-7, 7)

floating_speed = 0.05;  // Adjust for speed of floating
floating_range = 5;    // How high/low it floats
base_y = obj_player.y + y_bias;             // Starting Y position
time_offset = 0

image_xscale = .5;
image_yscale = .5;