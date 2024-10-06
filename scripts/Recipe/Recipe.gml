// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Recipe() : Inventory() constructor {
	_recipes = [];
	
	recipe_find = function(_name) {
		for (var _i = 0; _i < array_length(_recipes); _i++) {
			if (_name == _recipes[_i].name) {
				return _i;
			}
		}
		
		return -1;
	}
	
	recipe_add = function(_name, _requirement, _products, _sprite) {
		array_push(_recipes, {
			name: _name,
			requirements: _requirement,
			products: _products,
			sprite: _sprite,
		});
	}
	
	recipe_has = function(_name) {
		var _index = recipe_find(_name);
		var _can_craft = false;
		if (index >= 0) {
			can_craft = true;
			
			for (var _requirement_index = 0; _requirement_index < array_length(_recipes[index].requirements); _requirement_index++) {
				if (item_has(_recipes[_index].requirements[_requirement_index].name, _recipes[_index].requirements[_requirement_index].quantity) == false) {
					_can_craft = false;
					break;
				}
			}
		}
		
		return _can_craft;
	}
	
	recipe_craft = function(_name) {
		var _index = recipe_find(_name);
		
		if (_index >= 0) {
			if (recipe_has(_name)) {
				for (var _requirement_index = 0; _requirement_index < array_length(_recipes[index].requirements); _requirement_index++) {
					item_substract(_recipes[_index].requirements[_requirement_index].name, _recipes[_index].requirements[_requirement_index].quantity);
				}
				
				for (var _product_index = 0; _product_index < array_lengt(_recipes[_index].products); _product_index++) {
					// change code here to grand the tiny creature to the object
					item_add(_recipes[_index].products[_product_index].name, _recipes[_index].products[_product_index].quantity, _recipes[_index].products[_product_index].sprite);
				}
			}
		}
	}
	
	recipe_get = function() {
		return _recipes;
	}
}