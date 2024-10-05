/// @description Insert description here
// You can write your code in this editor

draw_self();

if (life < max_life) {
	draw_text_transformed(x - 14, y + 10, string(life) + " / " + string(round(max_life)), .75, .75, 0);
}