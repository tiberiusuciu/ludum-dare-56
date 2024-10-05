/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_proggy);


if (room == rm_01) {
	
	draw_text_transformed(50, 50, "Health " + string(round(player_health)) + " / " + string(round(player_max_health)), 2, 2, 0);
	draw_text_transformed(50, 75, "Stamina " + string(round(player_stamina)) + " / " + string(round(player_max_stamina)), 2, 2, 0);


	if (has_died) {
		draw_text_transformed(50, window_get_height() - 50, "All items has been lost on death", 2, 2, 0);
	}
}