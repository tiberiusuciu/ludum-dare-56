/// @description Insert description here
// You can write your code in this editor


obj_inventory.inventory.item_add(name, 1, target_sprite);
var _item_text = instance_create_layer(x, y, "Instances", obj_item_text);
var _items = obj_inventory.inventory.item_get();

var _item_index = obj_inventory.inventory.item_find(name);
if (_item_index >= 0) {
	var _item = _items[_item_index]
	_item_text.text = $"{_item.name} ({_item.quantity})";	
}