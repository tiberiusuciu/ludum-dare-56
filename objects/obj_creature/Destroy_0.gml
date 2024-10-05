/// @description Insert description here
// You can write your code in this editor

// 10% of getting nothing
if (random_range(1, 100) > 10) {
	
	var _loot_roll = random_range(1, 100);
	// 40% of getting just bone
	if (_loot_roll <= 60) {
		instance_create_layer(x + random_range(-20, 20),
			y + random_range(-20, 20), "Instances", obj_bone_item)	
	}
	// coin drop
	else if (_loot_roll > 60 && _loot_roll <= 90) {
	
	}
	// rare drop
	else {
		
	}
	
}
