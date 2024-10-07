/// @description Insert description here
// You can write your code in this editor

inventory = new Recipe();
collectionLog = new CollectionLog();


/*
	inventory.item_add("Apple", 99, spr_apple);
	inventory.item_add("Bone", 99, spr_bone);
	inventory.item_add("Milk", 99, spr_milk);
	inventory.item_add("Hair", 99, spr_hair);
	inventory.item_add("Bacon", 99, spr_bacon);
	inventory.item_add("Banana", 99, spr_banana);
	inventory.item_add("Blood", 99, spr_blood);
	inventory.item_add("Blue Paint", 99, spr_blue_paint);
	inventory.item_add("Carrot", 99, spr_carrot);
	inventory.item_add("Coin", 99, spr_coin);
	inventory.item_add("Crocs", 99, spr_crocs);
	inventory.item_add("Crown", 99, spr_crown);
	inventory.item_add("Dragon Scale", 99, spr_dragon_scale);
	inventory.item_add("Egg", 99, spr_egg);
	inventory.item_add("Fang", 99, spr_fang);
	inventory.item_add("Feather", 99, spr_feather);
	inventory.item_add("Fishing Bait", 99, spr_fishing_bait);
	inventory.item_add("Flippers", 99, spr_flippers);
	inventory.item_add("Harpoon", 99, spr_harpoon);
	inventory.item_add("Hay", 99, spr_hay);
	inventory.item_add("Ice", 99, spr_ice);
	inventory.item_add("Lava", 99, spr_lava);
	inventory.item_add("Leaf", 99, spr_leaf);
	inventory.item_add("Leather", 99, spr_leather);
	inventory.item_add("Magic Rainbow", 99, spr_magic_rainbow);
	inventory.item_add("Mud", 99, spr_mud);
	inventory.item_add("Night Vision", 99, spr_night_vision);
	inventory.item_add("Stick", 99, spr_stick);
	inventory.item_add("Tusk", 99, spr_tusk);
	inventory.item_add("Water", 99, spr_water);
	inventory.item_add("Wool", 99, spr_wool);

*/
/*
	inventory.item_add("Night Vision", 2, spr_night_vision);
	inventory.item_add("Carrot", 2, spr_carrot);
	inventory.item_add("Feather", 3, spr_feather);
*/

// recipes
inventory.recipe_add("Dog", [
	{
		name: "Bone",
		quantity: 1,
	},
	{
		name: "Hair",
		quantity: 1,
	},
	{
		name: "Stick",
		quantity: 1,
	}
], [
	{
		name: "Dog",
		quantity: 1,
		sprite: spr_dog,
	}
], spr_dog)

inventory.recipe_add("Cat", [
	{
		name: "Bone",
		quantity: 1,
	},
	{
		name: "Hair",
		quantity: 1,
	},
	{
		name: "Milk",
		quantity: 1,
	}
], [
	{
		name: "Cat",
		quantity: 1,
		sprite: spr_cat,
	}
], spr_cat)

inventory.recipe_add("Owl", [
	{
		name: "Bone",
		quantity: 1,
	},
	{
		name: "Feather",
		quantity: 1,
	},
	{
		name: "Night Vision",
		quantity: 1,
	}
], [
	{
		name: "Owl",
		quantity: 1,
		sprite: spr_cat,
	}
], spr_owl)

inventory.recipe_add("Cow", [
	{
		name: "Bone",
		quantity: 1,
	},
	{
		name: "Milk",
		quantity: 1,
	},
	{
		name: "Hay",
		quantity: 1,
	}
], [
	{
		name: "Cow",
		quantity: 1,
		sprite: spr_cow,
	}
], spr_cow)

inventory.recipe_add("Chicken", [
	{
		name: "Bone",
		quantity: 1,
	},
	{
		name: "Feather",
		quantity: 1,
	},
	{
		name: "Egg",
		quantity: 1,
	}
], [
	{
		name: "Chicken",
		quantity: 1,
		sprite: spr_chicken,
	}
], spr_chicken)

inventory.recipe_add("Pig", [
	{
		name: "Bone",
		quantity: 1,
	},
	{
		name: "Mud",
		quantity: 1,
	},
	{
		name: "Bacon",
		quantity: 1,
	}
], [
	{
		name: "Pig",
		quantity: 1,
		sprite: spr_pig,
	}
], spr_pig)

inventory.recipe_add("Horse", [
	{
		name: "Bone",
		quantity: 1,
	},
	{
		name: "Apple",
		quantity: 1,
	},
	{
		name: "Hay",
		quantity: 1,
	}
], [
	{
		name: "Horse",
		quantity: 1,
		sprite: spr_horse,
	}
], spr_horse)

inventory.recipe_add("Penguin", [
	{
		name: "Bone",
		quantity: 1,
	},
	{
		name: "Ice",
		quantity: 1,
	},
	{
		name: "Flippers",
		quantity: 1,
	}
], [
	{
		name: "Penguin",
		quantity: 1,
		sprite: spr_penguin,
	}
], spr_penguin)

inventory.recipe_add("Dragon", [
	{
		name: "Bone",
		quantity: 1,
	},
	{
		name: "Dragon Scale",
		quantity: 1,
	},
	{
		name: "Lava",
		quantity: 1,
	}
], [
	{
		name: "Dragon",
		quantity: 1,
		sprite: spr_dragon,
	}
], spr_dragon)

inventory.recipe_add("Sheep", [
	{
		name: "Bone",
		quantity: 1,
	},
	{
		name: "Wool",
		quantity: 1,
	},
	{
		name: "Hay",
		quantity: 1,
	}
], [
	{
		name: "Sheep",
		quantity: 1,
		sprite: spr_sheep,
	}
], spr_sheep)

inventory.recipe_add("Whale", [
	{
		name: "Bone",
		quantity: 1,
	},
	{
		name: "Water",
		quantity: 1,
	},
	{
		name: "Harpoon",
		quantity: 1,
	}
], [
	{
		name: "Whale",
		quantity: 1,
		sprite: spr_whale,
	}
], spr_whale)

inventory.recipe_add("Fish", [
	{
		name: "Bone",
		quantity: 1,
	},
	{
		name: "Water",
		quantity: 1,
	},
	{
		name: "Fishing Bait",
		quantity: 1,
	}
], [
	{
		name: "Fish",
		quantity: 1,
		sprite: spr_fish,
	}
], spr_fish)

inventory.recipe_add("Shark", [
	{
		name: "Bone",
		quantity: 1,
	},
	{
		name: "Water",
		quantity: 1,
	},
	{
		name: "Blood",
		quantity: 1,
	}
], [
	{
		name: "Shark",
		quantity: 1,
		sprite: spr_shark,
	}
], spr_shark)

inventory.recipe_add("Monkey", [
	{
		name: "Bone",
		quantity: 1,
	},
	{
		name: "Banana",
		quantity: 1,
	},
	{
		name: "Hair",
		quantity: 1,
	}
], [
	{
		name: "Monkey",
		quantity: 1,
		sprite: spr_monkey,
	}
], spr_monkey)

inventory.recipe_add("Unicorn", [
	{
		name: "Bone",
		quantity: 1,
	},
	{
		name: "Magic Rainbow",
		quantity: 1,
	},
	{
		name: "Hay",
		quantity: 1,
	}
], [
	{
		name: "Unicorn",
		quantity: 1,
		sprite: spr_unicorn,
	}
], spr_unicorn)

inventory.recipe_add("Crocodile", [
	{
		name: "Bone",
		quantity: 1,
	},
	{
		name: "Leather",
		quantity: 1,
	},
	{
		name: "Crocs",
		quantity: 1,
	}
], [
	{
		name: "Crocodile",
		quantity: 1,
		sprite: spr_crocodile,
	}
], spr_crocodile)

inventory.recipe_add("Lion", [
	{
		name: "Bone",
		quantity: 1,
	},
	{
		name: "Hair",
		quantity: 1,
	},
	{
		name: "Crown",
		quantity: 1,
	}
], [
	{
		name: "Lion",
		quantity: 1,
		sprite: spr_lion,
	}
], spr_lion)

inventory.recipe_add("Wolf", [
	{
		name: "Bone",
		quantity: 1,
	},
	{
		name: "Fang",
		quantity: 1,
	},
	{
		name: "Hair",
		quantity: 1,
	}
], [
	{
		name: "Wolf",
		quantity: 1,
		sprite: spr_wolf,
	}
], spr_wolf)

inventory.recipe_add("Giraffe", [
	{
		name: "Bone",
		quantity: 1,
	},
	{
		name: "Leaf",
		quantity: 1,
	},
	{
		name: "Blue Paint",
		quantity: 1,
	}
], [
	{
		name: "Giraffe",
		quantity: 1,
		sprite: spr_giraffe,
	}
], spr_giraffe)

inventory.recipe_add("Elephant", [
	{
		name: "Bone",
		quantity: 1,
	},
	{
		name: "Tusk",
		quantity: 1,
	},
	{
		name: "Water",
		quantity: 1,
	}
], [
	{
		name: "Elephant",
		quantity: 1,
		sprite: spr_elephant,
	}
], spr_elephant)

inventory.recipe_add("Bunny", [
	{
		name: "Bone",
		quantity: 1,
	},
	{
		name: "Carrot",
		quantity: 1,
	},
	{
		name: "Hair",
		quantity: 1,
	}
], [
	{
		name: "Bunny",
		quantity: 1,
		sprite: spr_bunny,
	}
], spr_bunny)


target_craft = noone;


// UI Information //

display_set_gui_size(1366, 768);

inventory_columns = 10;
inventory_rows = 4;

color_border = make_color_rgb(196, 150, 106);
color_background = make_color_rgb(238, 195, 154);
color_inventory_highlight = c_white;
ui_padding_x = 25;
ui_padding_y = 25;
ui_inventory_panel = 750;
ui_border_size = 8;
ui_inventory_padding = 50;
ui_inventory_box = 49;
ui_inventory_margin = 20;

ui_crafting_box = 98;
ui_crafting_box_margin = 48;

// Collection Log info //
collection_columns = 7;
collection_rows = 3;
