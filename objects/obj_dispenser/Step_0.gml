/// @description Insert description here
// You can write your code in this editor

if ((abs(x - obj_player.x) <= 60 && abs(y - obj_player.y) <= 60) && keyboard_check_pressed(ord("E"))) {
	if (obj_inventory.inventory.item_has("Coin", 2)) {
		obj_inventory.inventory.item_substract("Coin", 2)
		
		var _items = item_utilities.get_items();
		var _random_item = item_utilities.get_random_item()
		
		var _item = instance_create_layer(x + random_range(-20, 20),
			y + random_range(-20, 20), "Instances", obj_item)
		_item.name = _random_item.name
		_item.target_sprite = _random_item.sprite;
	}
}