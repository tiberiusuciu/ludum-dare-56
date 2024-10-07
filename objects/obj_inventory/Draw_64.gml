/// @description Insert description here
// You can write your code in this editor

if (obj_crafter.is_crafting) {
	var _g_width = display_get_gui_width();
	var _g_height = display_get_gui_height();

	// shadow
	draw_set(c_black, .2);
	draw_rectangle(
		ui_padding_x - ui_border_size,
		ui_padding_y - ui_border_size,
		(_g_width - ui_padding_x) + ui_border_size,
		(_g_height - ui_padding_y) + ui_border_size,
		false
	);


	// full rectangle

	draw_set(color_border, 1);
	draw_rectangle(
		ui_padding_x,
		ui_padding_y,
		(_g_width - ui_padding_x),
		(_g_height - ui_padding_y),
		false
	);

	// draw inner rectangle
	draw_set(color_background, 1);
	draw_rectangle(
		ui_padding_x + ui_border_size,
		ui_padding_y + ui_border_size,
		(_g_width - ui_padding_x) - ui_border_size,
		(_g_height - ui_padding_y) - ui_border_size,
		false
	);

	// draw vertical line
	draw_set(color_border, 1);
	draw_rectangle(
		ui_padding_x + ui_inventory_panel,
		ui_padding_y,
		(ui_padding_x + ui_inventory_panel) + ui_border_size,
		(_g_height - ui_padding_y) - ui_border_size,
		false
	);

	// Draw close button
	draw_set(c_red, 1);
	draw_text_transformed(
		ui_padding_x + (ui_border_size * 3) + 4 + ui_inventory_panel + 500,
		ui_padding_y + (ui_border_size * 3) + 4,
		"X",
		3,
		3,
		0
	)

	// font setup
	draw_set_font(fnt_proggy);
	text_align(fa_left, fa_top);

	// text shadow
	draw_set(c_black, .5);
	draw_text_transformed(
		ui_padding_x + (ui_border_size * 3) + 4,
		ui_padding_y + (ui_border_size * 3) + 4,
		"Inventory",
		3,
		3,
		0
	)

	draw_text_transformed(
		ui_padding_x + (ui_border_size * 3) + 4 + ui_inventory_panel,
		ui_padding_y + (ui_border_size * 3) + 4,
		"Creation",
		3,
		3,
		0
	)

	// inventory items

	var _mx = device_mouse_x_to_gui(0);
	var _my = device_mouse_y_to_gui(0);

	var _inventory_items = inventory.item_get();
	var _crafting_items = inventory.inventory_used_for_crafting_get();
	var _recipes = inventory.recipe_get();
	for (var _row = 0; _row < inventory_rows; _row++) {
		var _pos_y = ui_padding_y + (ui_border_size * 13) + (_row * (ui_inventory_margin + ui_inventory_box));
		for (var _column = 0; _column < inventory_columns; _column++) {
			var _pos_x = ui_padding_x + ui_border_size + ui_inventory_padding + (_column * (ui_inventory_margin + ui_inventory_box));
	
			// draw shadow
			draw_sprite_ext(
				spr_inventory_box,
				0,
				_pos_x + 4,
				_pos_y + 4,
				1,
				1,
				0,
				c_black, .4);
			
			// draw inventory box
			draw_sprite_ext(
				spr_inventory_box,
				0,
				_pos_x,
				_pos_y,
				1,
				1,
				0,
				c_white, 1);
		
			var _inventory_index = (_row * inventory_columns) + _column;
			if (_inventory_index <= array_length(_inventory_items) - 1) {
				// draw inventory item
				draw_sprite(_inventory_items[_inventory_index].sprite, 0, _pos_x + 10, _pos_y + 8);
			}
		
			// hover
			if (is_between(_mx, _pos_x, _pos_x + ui_inventory_box)) {
				if (is_between(_my, _pos_y, _pos_y + ui_inventory_box)) {
					draw_set(color_inventory_highlight, .2);
					draw_rectangle(
						_pos_x,
						_pos_y,
						_pos_x + ui_inventory_box,
						_pos_y + ui_inventory_box,
						false
					);
				
					draw_reset();
				}
			}
		
			// quantity
			if (_inventory_index <= array_length(_inventory_items) - 1) {
				// draw inventory item
				draw_set(#232323, .8);
				draw_circle(
					_pos_x + ui_inventory_box,
					_pos_y + ui_inventory_box,
					14,
					false
				);
			
				// quantity
				draw_set(c_white, 1);
				text_align(fa_center, fa_middle);
				draw_text(
					_pos_x + ui_inventory_box,
					_pos_y + ui_inventory_box,
					_inventory_items[_inventory_index].quantity
				);
			}
		}
	}

	// crafting GUI
	for (var _i = 0; _i < 3; _i++) {
	
		// draw shadow
		draw_sprite_ext(spr_inventory_box, 0, 
			ui_padding_x + ui_border_size + ui_inventory_panel + (_i * ui_crafting_box) + (ui_crafting_box_margin * _i) + ui_crafting_box_margin + 4,
			ui_padding_y + ui_border_size + 95 + 4,
			2,
			2,
			0,
			c_black,
			.4
		)
	
		// draw the crafting box
	
		draw_sprite_ext(spr_inventory_box, 0, 
			ui_padding_x + ui_border_size + ui_inventory_panel + (_i * ui_crafting_box) + (ui_crafting_box_margin * _i) + ui_crafting_box_margin,
			ui_padding_y + ui_border_size + 95,
			2,
			2,
			0,
			c_white,
			1
		)
	
		var _pos_x = ui_padding_x + ui_border_size + ui_inventory_panel + (_i * ui_crafting_box) + (ui_crafting_box_margin * _i) + ui_crafting_box_margin;
		var _pos_y = ui_padding_y + ui_border_size + 95;
	
		// hover
		if (is_between(_mx, _pos_x, _pos_x + ui_crafting_box)) {
			if (is_between(_my, _pos_y, _pos_y + ui_crafting_box)) {
				draw_set(color_inventory_highlight, .2);
				draw_rectangle(
					_pos_x,
					_pos_y,
					_pos_x + ui_crafting_box,
					_pos_y + ui_crafting_box,
					false
				);
				
				draw_reset();
			}
		}
	
	
		// Draw materials
		if (_i <= array_length(_crafting_items) - 1) {
			// draw inventory item
			draw_sprite_ext(_crafting_items[_i].sprite, 0, _pos_x + 20, _pos_y + 8, 2, 2, 0, c_white, 1);
			// Draw item title
			text_align(fa_center, fa_middle);
			draw_set(c_black, .75)
			draw_text_transformed(
				 _pos_x + 50,
				 _pos_y + 8 + ui_crafting_box + 20,
				_crafting_items[_i].name,
				1.33,
				1.33,
				0
			)
		}
	
	
	}


	// Result area
	draw_set(c_black, .5);

	var _potential_recipes = [];
	if (array_length(_crafting_items) == 3) {
	
		// make sure we have 3 different ingredients
		if (_crafting_items[0].name != _crafting_items[1].name && _crafting_items[1].name != _crafting_items[2].name && _crafting_items[0].name != _crafting_items[2].name) {
			// user has 3 ingredients they are trying to craft with
			for (var _i = 0; _i < 3; _i++) {
				if (_i == 0) {
					for (var _j = 0; _j < array_length(_recipes); _j++) {
						for (var _k = 0; _k < 3; _k++) {
							if (_recipes[_j].requirements[_k].name == _crafting_items[_i].name) {
								array_push(_potential_recipes, _recipes[_j])
								break;
							}
						}
					}
				}
				else {
					var _updated_potential_recipes = [];
					for (var _j = 0; _j < array_length(_potential_recipes); _j++) {
						for (var _k = 0; _k < 3; _k++) {
							if (_potential_recipes[_j].requirements[_k].name == _crafting_items[_i].name) {
								array_push(_updated_potential_recipes, _potential_recipes[_j])
								break;
							}
						}
					}
					_potential_recipes = _updated_potential_recipes;
				}
			}
		}	
	}


	var _result_text = "Nothing!"

	if (array_length(_potential_recipes) == 1) {
		_result_text = _potential_recipes[0].name
		target_craft = _potential_recipes[0].name;
	}

	text_align(fa_left, fa_middle);
	draw_text_transformed(
		ui_padding_x + (ui_border_size * 3) + 4 + ui_inventory_panel,
		ui_padding_y + (ui_border_size * 3) + 4 + 250,
		$"Result: {_result_text}",
		3,
		3,
		0
	)

	// Draw the confirm button
	if (array_length(_potential_recipes) == 1) {
		draw_set(color_border, 1);
		var _pos_x = ui_padding_x + (ui_border_size * 3) + 4 + ui_inventory_panel + 150;
		var _pos_y = ui_padding_y + (ui_border_size * 3) + 4 + 450;
		draw_rectangle(
			_pos_x,
			_pos_y,
			_pos_x + 200,
			_pos_y + 75,
			false
		)
		draw_set(c_white, 1);
		draw_text_transformed(
			_pos_x + 35,
			_pos_y + 40,
			"CREATE",
			3,
			3,
			0
		)
	
		// hover
		if (is_between(_mx, _pos_x, _pos_x + 200)) {
			if (is_between(_my, _pos_y, _pos_y + 75)) {
				draw_set(color_inventory_highlight, .2);
				draw_rectangle(
					_pos_x,
					_pos_y,
					_pos_x + 200,
					_pos_y + 75,
					false
				);
			}
		}
	}

	draw_reset();
} 

if (obj_game.view_collection_log) {
	
	var _g_width = display_get_gui_width();
	var _g_height = display_get_gui_height();
	
	// shadow
	draw_set(c_black, .2);
	draw_rectangle(
		ui_padding_x - ui_border_size,
		ui_padding_y - ui_border_size,
		(_g_width - ui_padding_x) + ui_border_size,
		(_g_height - ui_padding_y) + ui_border_size,
		false
	);


	// full rectangle

	draw_set(color_border, 1);
	draw_rectangle(
		ui_padding_x,
		ui_padding_y,
		(_g_width - ui_padding_x),
		(_g_height - ui_padding_y),
		false
	);

	// draw inner rectangle
	draw_set(color_background, 1);
	draw_rectangle(
		ui_padding_x + ui_border_size,
		ui_padding_y + ui_border_size,
		(_g_width - ui_padding_x) - ui_border_size,
		(_g_height - ui_padding_y) - ui_border_size,
		false
	);
	
	// Draw close button
	draw_set(c_red, 1);
	draw_text_transformed(
		ui_padding_x + (ui_border_size * 3) + 4 + ui_inventory_panel + 500,
		ui_padding_y + (ui_border_size * 3) + 4,
		"X",
		3,
		3,
		0
	)
	
	// inventory items

	var _mx = device_mouse_x_to_gui(0);
	var _my = device_mouse_y_to_gui(0);

	var _collection_log = collectionLog.get_log();
	for (var _row = 0; _row < collection_rows; _row++) {
		var _pos_y = ui_padding_y + (ui_border_size * 13) + (_row * (ui_crafting_box_margin + ui_crafting_box));
		for (var _column = 0; _column < collection_columns; _column++) {
			var _pos_x = ui_padding_x + ui_border_size + ui_inventory_padding + (_column * (ui_crafting_box_margin + ui_crafting_box));
	
			// draw shadow
			draw_sprite_ext(
				spr_inventory_box,
				0,
				_pos_x + 4,
				_pos_y + 4,
				2,
				2,
				0,
				c_black, .4);
			
			// draw inventory box
			draw_sprite_ext(
				spr_inventory_box,
				0,
				_pos_x,
				_pos_y,
				2,
				2,
				0,
				c_white, 1);
		
			var _inventory_index = (_row * collection_columns) + _column;
			if (_inventory_index <= array_length(_collection_log) - 1) {
				// draw inventory item
				draw_sprite_ext(_collection_log[_inventory_index].sprite, 0, _pos_x + 10 + 40, _pos_y + 8 + 64, 2, 2, 0, c_white, 1);
			
				if (!_collection_log[_inventory_index].unlocked) {
					draw_sprite_ext(
						spr_inventory_box,
						0,
						_pos_x,
						_pos_y,
						2,
						2,
						0,
						c_black, .4);
				}
			}
			
			
		
			// hover
			if (is_between(_mx, _pos_x, _pos_x + ui_inventory_box * 2)) {
				if (is_between(_my, _pos_y, _pos_y + ui_inventory_box * 2)) {
					draw_set(color_inventory_highlight, .2);
					draw_rectangle(
						_pos_x,
						_pos_y,
						_pos_x + ui_inventory_box * 2,
						_pos_y + ui_inventory_box * 2,
						false
					);
				
					draw_reset();
				}
			}
			
			if (is_between(_mx, _pos_x, _pos_x + ui_inventory_box * 2)) {
				if (is_between(_my, _pos_y, _pos_y + ui_inventory_box * 2)) {
					var _recipes = inventory.recipe_get();
					var _recipe_index = inventory.recipe_find(_collection_log[_inventory_index].name);
			
					draw_set(c_black, .5);
					if (_recipe_index != -1) {
						for (var _i = 0; _i < 2; _i++) {
							draw_text_transformed(
								ui_padding_x + (ui_border_size * 3) + 4 + 64,
								ui_padding_y + (ui_border_size * 3) + 4 + 525 + (_i * 25),
								$"Ingredient {_i + 1}: {_recipes[_recipe_index].requirements[_i].name}",
								2,
								2,
								0
							)
						}
					}
					draw_text_transformed(
						ui_padding_x + (ui_border_size * 3) + 4 + 64,
						ui_padding_y + (ui_border_size * 3) + 4 + 525 + 50,
						$"Ingredient 3: ???",
						2,
						2,
						0
					)	
				}
			}
			
			
		/*
			// quantity
			if (_inventory_index <= array_length(_inventory_items) - 1) {
				// draw inventory item
				draw_set(#232323, .8);
				draw_circle(
					_pos_x + ui_inventory_box,
					_pos_y + ui_inventory_box,
					14,
					false
				);
			
				// quantity
				draw_set(c_white, 1);
				text_align(fa_center, fa_middle);
				draw_text(
					_pos_x + ui_inventory_box,
					_pos_y + ui_inventory_box,
					_inventory_items[_inventory_index].quantity
				);
			}
		*/
		}
	}

	
	// Quantity
	text_align(fa_left, fa_middle);
	draw_set(c_black, .5);
	
	var _total_creatures = array_length(collectionLog.get_log());
	var _total_unlocked = collectionLog.get_unlocked_count();
	if (_total_creatures == _total_unlocked) {
		draw_set_color(c_green);
	}
	draw_text_transformed(
		ui_padding_x + (ui_border_size * 3) + 4 + 64,
		ui_padding_y + (ui_border_size * 3) + 4 + 625,
		$"Progress: {_total_unlocked}/{_total_creatures} unlocked",
		3,
		3,
		0
	)
	
	draw_reset();
}