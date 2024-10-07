// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Items() constructor {
	item_list = [
		{
			name: "Apple",
			sprite: spr_apple
		},
		{
			name: "Bacon",
			sprite: spr_bacon
		},
		{
			name: "Banana",
			sprite: spr_banana
		},
		{
			name: "Blood",
			sprite: spr_blood
		},
		{
			name: "Blue Paint",
			sprite: spr_blue_paint
		},
		{
			name: "Bone",
			sprite: spr_bone
		},
		{
			name: "Carrot",
			sprite: spr_carrot
		},
		{
			name: "Coin",
			sprite: spr_coin
		},
		{
			name: "Crown",
			sprite: spr_crown
		},
		{
			name: "Dragon Scale",
			sprite: spr_dragon_scale
		},
		{
			name: "Egg",
			sprite: spr_egg
		},
		{
			name: "Fang",
			sprite: spr_fang
		},
		{
			name: "Feather",
			sprite: spr_feather
		},
		{
			name: "Wool",
			sprite: spr_wool
		},
		{
			name: "Crocs",
			sprite: spr_crocs
		},
		{
			name: "Fishing Bait",
			sprite: spr_fishing_bait
		},
		{
			name: "Flippers",
			sprite: spr_flippers
		},
		{
			name: "Hair",
			sprite: spr_hair
		},
		{
			name: "Harpoon",
			sprite: spr_harpoon
		},
		{
			name: "Hay",
			sprite: spr_hay
		},
		{
			name: "Ice",
			sprite: spr_ice
		},
		{
			name: "Lava",
			sprite: spr_lava
		},
		{
			name: "Leather",
			sprite: spr_leather
		},
		{
			name: "Magic Rainbow",
			sprite: spr_magic_rainbow
		},
		{
			name: "Milk",
			sprite: spr_milk
		},
		{
			name: "Mud",
			sprite: spr_mud
		},
		{
			name: "Night Vision",
			sprite: spr_night_vision
		},
		{
			name: "Stick",
			sprite: spr_stick
		},
		{
			name: "Water",
			sprite: spr_water
		},
	];
	
	
	get_items = function() {
		return item_list;
	}
	
	get_item_index = function(_name) {
		var _index = -1;
		
		for (var _i = 0; _i < array_length(item_list); _i++) {
			if (item_list[_i].name == _name) {
				_index = _i;
				break;
			}
		}
		
		return _index;
	}
	
	get_random_item = function() {
		
		var _random_number = round(random_range(0, array_length(item_list) - 1))
		
		return item_list[_random_number];
	}
}