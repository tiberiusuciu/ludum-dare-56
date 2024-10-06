/// @description Insert description here
// You can write your code in this editor

draw_self();

if ((abs(x - obj_player.x) <= 60 && abs(y - obj_player.y) <= 60)) {
	draw_text_transformed(x, y - 20, "Press (E) to create some Tiny Creatures", .5, .5, 0);
}