/// @description Insert description here
// You can write your code in this editor
other.life -= damage;
other.state = "attack";
show_debug_message(string(other.life));
instance_destroy(self);