// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CollectionLog() constructor {
	
	collection_log = [
		{
			name: "Dog",
			unlocked: false,
		},
		{
			name: "Cat",
			unlocked: false,
			sprite: spr_cat,
		},
		{
			name: "Owl",
			unlocked: false,
		},
		{
			name: "Cow",
			unlocked: false,
		},
		{
			name: "Chicken",
			unlocked: false,
		},
		{
			name: "Pig",
			unlocked: false,
		},
		{
			name: "Horse",
			unlocked: false,
		},
		{
			name: "Penguin",
			unlocked: false,
		},
		{
			name: "Dragon",
			unlocked: false,
		},
		{
			name: "Whale",
			unlocked: false,
		},
		{
			name: "Sheep",
			unlocked: false,
		},
		{
			name: "Fish",
			unlocked: false,
		},
		{
			name: "Shark",
			unlocked: false,
		},
		{
			name: "Monkey",
			unlocked: false,
		},
		{
			name: "Unicorn",
			unlocked: false,
		},
		{
			name: "Crocodile",
			unlocked: false,
		},
		{
			name: "Lion",
			unlocked: false,
		},
		{
			name: "Wolf",
			unlocked: false,
		},
		{
			name: "Giraffe",
			unlocked: false,
		},
		{
			name: "Elephant",
			unlocked: false,
		},
		{
			name: "Bunny",
			unlocked: false,
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