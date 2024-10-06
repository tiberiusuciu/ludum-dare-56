/// @description Insert description here
// You can write your code in this editor

draw_self();
depth = -y;

if ((abs(x - obj_player.x) <= 60 && abs(y - obj_player.y) <= 60)) {
	draw_text_transformed(x + 48, y + 10, "Press (E) to pay (" + string(cost) + ") coins for a random ingredient", .5, .5, 0);
}