// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CollectionLog() constructor {
	
	collection_log = [
		{
			name: "Dog",
			unlocked: false,
			sprite: spr_dog,
		},
		{
			name: "Cat",
			unlocked: false,
			sprite: spr_cat,
		},
		{
			name: "Owl",
			unlocked: false,
			sprite: spr_owl,
		},
		{
			name: "Cow",
			unlocked: false,
			sprite: spr_cow,
		},
		{
			name: "Chicken",
			unlocked: false,
			sprite: spr_chicken,
		},
		{
			name: "Pig",
			unlocked: false,
			sprite: spr_pig,
		},
		{
			name: "Horse",
			unlocked: false,
			sprite: spr_horse,
		},
		{
			name: "Penguin",
			unlocked: false,
			sprite: spr_penguin,
		},
		{
			name: "Dragon",
			unlocked: false,
			sprite: spr_dragon,
		},
		{
			name: "Whale",
			unlocked: false,
			sprite: spr_whale,
		},
		{
			name: "Sheep",
			unlocked: false,
			sprite: spr_sheep,
		},
		{
			name: "Fish",
			unlocked: false,
			sprite: spr_fish,
		},
		{
			name: "Shark",
			unlocked: false,
			sprite: spr_shark,
		},
		{
			name: "Monkey",
			unlocked: false,
			sprite: spr_monkey,
		},
		{
			name: "Unicorn",
			unlocked: false,
			sprite: spr_unicorn,
		},
		{
			name: "Crocodile",
			unlocked: false,
			sprite: spr_crocodile,
		},
		{
			name: "Lion",
			unlocked: false,
			sprite: spr_lion,
		},
		{
			name: "Wolf",
			unlocked: false,
			sprite: spr_wolf,
		},
		{
			name: "Giraffe",
			unlocked: false,
			sprite: spr_giraffe,
		},
		{
			name: "Elephant",
			unlocked: false,
			sprite: spr_elephant,
		},
		{
			name: "Bunny",
			unlocked: false,
			sprite: spr_bunny,
		},
	]


	get_log = function() {
		return collection_log;
	}
	
	get_log_element_index = function(_name) {
		var _index = -1;
		
		for (var _i = 0; _i < array_length(collection_log); _i++) {
			if (collection_log[_i].name == _name) {
				_index = _i;
				break;
			}
		}
		
		return _index;
	}
}