// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Inventory() constructor{
	_inventory_items = [];
	_inventory_used_for_crafting = [];
	
	item_set = function(_name, _quantity, _sprite) {
		array_push(_inventory_items, {
			name: _name,
			quantity: _quantity,
			sprite: _sprite,
		});
	}
	
	item_find = function(_name) {
		for (var _i = 0; _i < array_length(_inventory_items); _i++) {
			if (_name == _inventory_items[_i].name) {
				return _i;
			}
		}
		
		return -1;
	}
	
	item_add = function(_name, _quantity, _sprite) {
		var _index = item_find(_name);
		
		if (_index >= 0)  {
			_inventory_items[_index].quantity += _quantity;
		} else {
			item_set(_name, _quantity, _sprite);
		}
	}
	
	item_has = function(_name, _quantity) {
		var _index = item_find(_name);
		
		if (_index >= 0) {
			return _inventory_items[_index].quantity >= _quantity;
		}
		
		return false;
	}
	
	item_substract = function(_name, _quantity) {
		var _index = item_find(_name);
		
		if (_index >= 0) {
			if (item_has(_name, _quantity)) {
				_inventory_items[_index].quantity -= _quantity;
				
				if (_inventory_items[_index].quantity <= 0) {
					item_remove(_index);
				}
			}
		}
	}
	
	item_remove = function(_index) {
		array_delete(_inventory_items, _index, 1);
	}
	
	item_get = function() {
		return _inventory_items;
	}
	
	inventory_used_for_crafting_get = function() {
		return _inventory_used_for_crafting;
	}
	
	can_add_item_for_crafting = function() {
		return array_length(_inventory_used_for_crafting) < 3
	}
	
	cancel_crafting = function() {
		for (var _i = 0; _i < array_length(_inventory_used_for_crafting); _i++) {
			item_add(_inventory_used_for_crafting[_i].name, _inventory_used_for_crafting[_i].quantity, _inventory_used_for_crafting[_i].sprite)
		}
		clear_crafting()
	}
	
	clear_crafting = function () {
		array_delete(_inventory_used_for_crafting, 0, 3)
	}
	
	item_add_for_crafting = function(_name, _quantity, _sprite) {
		if (can_add_item_for_crafting()) {
			array_push(_inventory_used_for_crafting, {
				name: _name,
				quantity: _quantity,
				sprite: _sprite,
			});
		}
	}
	
	item_remove_from_crafting = function(_index) {
		array_delete(_inventory_used_for_crafting, _index, 1);
	}
	
	item_craft = function (_creature_sprite) {
		// add to collection log
		clear_crafting()
		var _tiny_creature = instance_create_layer(obj_crafter.x, obj_crafter.y, "Instances", obj_tiny_creature);
		
		_tiny_creature.sprite_index = _creature_sprite;
	}
	
	toString = function() {
		return json_stringify(_inventory_items);
	}
}