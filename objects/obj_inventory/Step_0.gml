/// @description Insert description here
// You can write your code in this editor

if (!obj_crafter.is_crafting) {
	return;
} 


// inventory items

var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

var _inventory_items = inventory.item_get();
var _crafting_items = inventory.inventory_used_for_crafting_get();

if (mouse_check_button_pressed(mb_left)) {
	
	for (var _row = 0; _row < inventory_rows; _row++) {
		var _pos_y = ui_padding_y + (ui_border_size * 13) + (_row * (ui_inventory_margin + ui_inventory_box));
		for (var _column = 0; _column < inventory_columns; _column++) {
			var _pos_x = ui_padding_x + ui_border_size + ui_inventory_padding + (_column * (ui_inventory_margin + ui_inventory_box));
		
			// hover
			if (is_between(_mx, _pos_x, _pos_x + ui_inventory_box)) {
				if (is_between(_my, _pos_y, _pos_y + ui_inventory_box)) {
					var _inventory_index = (_row * inventory_columns) + _column;
					
					if (_inventory_index <= array_length(_inventory_items) - 1) {
						show_debug_message($"Using {_inventory_items[_inventory_index].name}");
						
						show_debug_message(string(inventory.can_add_item_for_crafting()))
						if (inventory.can_add_item_for_crafting()) {
							inventory.item_add_for_crafting(_inventory_items[_inventory_index].name, 1, _inventory_items[_inventory_index].sprite)
							inventory.item_substract(_inventory_items[_inventory_index].name, 1);
						}
					}
					else {
						show_debug_message("No inventory item here");
					}
				}
			}
		}
	}
}


// crafting items
if (mouse_check_button_pressed(mb_left)) {
	for (var _i = 0; _i < 3; _i++) {	
		var _pos_x = ui_padding_x + ui_border_size + ui_inventory_panel + (_i * ui_crafting_box) + (ui_crafting_box_margin * _i) + ui_crafting_box_margin;
		var _pos_y = ui_padding_y + ui_border_size + 95;
	
		// hover
		if (is_between(_mx, _pos_x, _pos_x + ui_crafting_box)) {
			if (is_between(_my, _pos_y, _pos_y + ui_crafting_box)) {
				if (_i < array_length(_crafting_items)) {
					inventory.item_add(_crafting_items[_i].name, _crafting_items[_i].quantity, _crafting_items[_i].sprite)
					inventory.item_remove_from_crafting(_i);
				}
			}
		}
	}
}

if (mouse_check_button_pressed(mb_left)) {
	var _pos_x = ui_padding_x + (ui_border_size * 3) + 4 + ui_inventory_panel + 150;
	var _pos_y = ui_padding_y + (ui_border_size * 3) + 4 + 450;
	if (is_between(_mx, _pos_x, _pos_x + 200)) {
		if (is_between(_my, _pos_y, _pos_y + 75)) {
			var _target_creature = collectionLog.get_log_element_index(target_craft)
			if (_target_creature != -1) {
				var _log = collectionLog.get_log();
				inventory.item_craft(_log[_target_creature].sprite);
				_log[_target_creature].unlocked = true;
			}
		}
	}
}

if (mouse_check_button_pressed(mb_left)) {
	var _pos_x = ui_padding_x + (ui_border_size * 3) + 4 + ui_inventory_panel + 500;
	var _pos_y =ui_padding_y + (ui_border_size * 3) + 4;
	if (is_between(_mx, _pos_x - 10, _pos_x + 30)) {
		if (is_between(_my, _pos_y - 10, _pos_y + 30)) {
			obj_crafter.is_crafting = false;
			inventory.cancel_crafting();
		}
	}
}

if (keyboard_check_pressed(vk_escape)) {
	obj_crafter.is_crafting = false;
	inventory.cancel_crafting();
}