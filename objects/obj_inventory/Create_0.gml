/// @description Insert description here
// You can write your code in this editor

inventory = new Recipe();
collectionLog = new CollectionLog();


	inventory.item_add("Bone", 3, spr_bone);
	inventory.item_add("Bone", 2, spr_bone);
	inventory.item_add("Milk", 5, spr_milk);
	inventory.item_add("Hair", 10, spr_hair);
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
], spr_cat)

show_debug_message(inventory);



show_debug_message(inventory);

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