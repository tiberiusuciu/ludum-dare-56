/// @description Insert description here
// You can write your code in this editor

with (obj_creature) {
	// Collision detected
	if (place_meeting(x, y, other)) {
	    life -= obj_player.attack_damage
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
		state = "attack"
	}
}
