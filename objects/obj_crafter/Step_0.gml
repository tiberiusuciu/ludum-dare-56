/// @description Insert description here
// You can write your code in this editor

if ((abs(x - obj_player.x) <= 60 && abs(y - obj_player.y) <= 60)) {
	var _crafting_pressed = keyboard_check_pressed(ord("E"))
	if (_crafting_pressed) {
		is_crafting = true;
		with (obj_creature) {
			state = "wander"
		}
	}
}
else if (is_crafting = true) {
	is_crafting = false;
	obj_inventory.inventory.cancel_crafting();
}