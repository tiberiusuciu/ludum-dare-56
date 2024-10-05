/// @description Insert description here
// You can write your code in this editor

obj_game.bone_count++;
var _item_text = instance_create_layer(x, y, "Instances", obj_item_text);
_item_text.text = "Bone (" + string(obj_game.bone_count) + ")";