/// @description Insert description here
// You can write your code in this editor

if (!obj_crafter.is_crafting) {
	return;
} 

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
	"Crafting",
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

show_debug_message(json_stringify(_potential_recipes))
show_debug_message(array_length(_potential_recipes))



var _result_text = "Nothing!"

if (array_length(_potential_recipes) == 1) {
	_result_text = _potential_recipes[0].name
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