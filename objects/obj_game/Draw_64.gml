/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_proggy);

if (room == rm_01) {
	var _g_width = display_get_gui_width();
	var _g_height = display_get_gui_height();
	draw_set(c_black, .75)
	draw_rectangle(0, 0, _g_width, _g_height, false)
	draw_reset();
	
	draw_set_font(fnt_proggy);
	
	draw_set_color(make_color_rgb(227, 94, 51));
	draw_text_transformed(20, 50, "Ludum", 3, 3, 0);
	draw_set_color(make_color_rgb(227, 139, 48));
	draw_text_transformed(125, 50, "Dare", 3, 3, 0);
	draw_set_color(make_color_rgb(250, 222, 55));
	draw_text_transformed(220, 50, "56", 3, 3, 0);
	
	draw_set_color(c_white);

	draw_text_transformed(20, 100, "tiberiusuciu and Camilia\n\nPresents:", 2, 2, 0);

	draw_set_color(make_color_rgb(60, 38, 190));
	draw_set_color(c_yellow);
	draw_text_transformed(20, 190, "Paco's Quest", 2, 2, 0);
	draw_set_color(c_white);
	
	var text01 = "The theme is:";
	var text02 = "Tiny Creatures";
	var text03 = "Paco's quest involves exploring the world,\ndefeating other creatures for their materials,\nso that you can create your own tiny creatures.\n\nThose tiny creatures will help you in your journey,\nwhich is to complete the collection log!";
	var text04 = "Press any key to start";

	draw_text_transformed(20, 250, text01, 2, 2, 0);
	draw_set_color(c_fuchsia);
	draw_text_transformed(20, 280, text02, 2, 2, 0);
	draw_set_color(c_white);
	draw_text_transformed(20, 400, text03, 2, 2, 0);	
	
	draw_text_transformed(20, room_height - 60, text04, 1.5, 1.5, 0);
	
	var text05 = "Controls:\n\n(C) Collection Log\n(Left Click) Attack\n(WASD) Move\n(Hold shift) Run";
	draw_text_transformed(20, 600, text05, 1, 1, 0);
}
else if (room == rm_02) {
	
	draw_set(c_navy, 1);
	
	draw_text_transformed(50, 50, "Health " + string(round(player_health)) + " / " + string(round(player_max_health)), 2, 2, 0);
	draw_text_transformed(50, 75, "Stamina " + string(round(player_stamina)) + " / " + string(round(player_max_stamina)), 2, 2, 0);
	var _g_width = display_get_gui_width();
	var _g_height = display_get_gui_height();
	
	draw_reset();

	if (has_died) {
		draw_text_transformed(50, window_get_height() - 50, "All items has been lost on death", 2, 2, 0);
	}
	
	draw_text_transformed(_g_width - 175, _g_height - 25, "(C) for collection log", 1, 1, 0);

	
	if (make_fade && !transition_to_credits_ready) {
		draw_set_color(c_black);
		fade_amount += (time_since / (game_get_speed(gamespeed_fps))) * .0075;
		draw_set_alpha(fade_amount)
		draw_rectangle(0, 0, _g_width, _g_height, false);
		draw_set_alpha(1);
		time_since++;
		
		if (fade_amount > 1) {
			transition_to_credits_ready = true;
			make_fade = false;
		}
	}
	else if (transition_to_credits_ready) {
		transition_to_credits_ready = false;
		fade_amount = 1;
	
		room_goto(rm_03);
	}
	draw_reset();
}
else if (room == rm_03) {
	var _g_width = display_get_gui_width();
	var _g_height = display_get_gui_height();
	draw_set_color(c_black);
	draw_set_alpha(.75);
	draw_rectangle(0, 0, _g_width, _g_height, false);
	draw_set_alpha(1);
	
	draw_set_font(fnt_proggy);
	draw_set_color(c_lime);
	
	text_align(fa_center, fa_top)
	draw_text_transformed(_g_width / 2, 100, "Thanks for playing!", 4, 4, 0);
	
	draw_set_color(c_white);
	
	text_align(fa_center, fa_top)
	draw_text_transformed(_g_width / 2, 250, "Thank you for playing our\nLudum Dare 56 entry", 2, 2, 0);
	draw_text_transformed(_g_width / 2, 350, "Made by\ntiberiusuciu and Camilia", 2, 2, 0);

	draw_set_color(c_white);
	draw_text_transformed(_g_width / 2, 450, "Special thanks to\nour beloved dog,", 2, 2, 0);
	draw_set_color(c_orange);
	draw_text_transformed(_g_width / 2, 500, "Paco", 2, 2, 0);

	draw_set_color(c_white);
	draw_text_transformed(_g_width / 2, _g_height - 50, "Press <escape> to quit\nor press <r> to restart", 1.5, 1.5, 0);
}