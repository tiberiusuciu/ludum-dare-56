/// @description Insert description here
// You can write your code in this editor

var _mx = obj_player.x;
var _my = obj_player.y;
var _angle = point_direction(source.x, source.y, _mx, _my);
var _attack_x = source.x + lengthdir_x(32, _angle); // 32 is the distance from the player
var _attack_y = source.y + lengthdir_y(32, _angle) - 16;
//x = lerp(x, _attack_x, .1);
//y = lerp(y, _attack_y, .1); 
x = _attack_x;
y = _attack_y; 

// Assuming 'target_angle' is the desired angle (0-360)

// Wrap the target angle between 0 and 360
_angle = _angle mod 360;

// Calculate the difference
var _angle_diff = _angle - image_angle;

// Normalize the angle difference
if (_angle_diff > 180) {
    _angle_diff -= 360;
} else if (_angle_diff < -180) {
    _angle_diff += 360;
}

// Update the image_angle smoothly
image_angle += _angle_diff * 0.1; // Adjust the multiplier for speed


if (!instance_exists(source)) {
	instance_destroy(self)
}

if (image_index == 7) {
	
	// Collision detected
	if (place_meeting(x, y, obj_player)) {
	    obj_game.player_health -= source.attack_damage
		/*
		hspd = 0;
		vspd = 0;
		
		var _knockback_strength = 20; // Adjust this value based on your game's needs

		// Get the attack direction (in degrees)
		var _attack_dir = point_direction(x, y, obj_player.x, obj_player.y);

		// Calculate the knockback direction (opposite)
		var _knockback_dir = _attack_dir + 180; // Add 180 to flip the direction

		// Convert knockback direction to radians for speed calculation
		var _knockback_x = lengthdir_x(_knockback_strength, _knockback_dir);
		var _knockback_y = lengthdir_y(_knockback_strength, _knockback_dir);

		// Apply knockback to the enemy's speed
		hspd = _knockback_x;
		vspd = _knockback_y;
		is_walking = false;
		*/
	}
}