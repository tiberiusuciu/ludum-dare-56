/// @description Insert description here
// You can write your code in this editor
for (var _i = 0; _i < amount_of_creature_to_spawn; _i++) {
	var _creature = instance_create_layer(
		x + random_range(-64, 64),
		y + random_range(-64, 64),
		"Instances",
		target_creature_to_spawn
	)
	
	_creature.parent_spawner = self;
}
