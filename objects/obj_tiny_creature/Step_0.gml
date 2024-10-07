/// @description Insert description here
// You can write your code in this editor
var _target = instance_nearest(x, y, obj_creature)
if (_target != noone) {

	if (abs(_target.x - x) <= 200 && abs(_target.y - y) <= 200) {
		var _mx = _target.x;
		var _my = _target.y;
		var _angle = point_direction(x, y, _mx, _my);
		var _attack_x = x + lengthdir_x(32, _angle); // 32 is the distance from the player
		var _attack_y = y + lengthdir_y(32, _angle) - 10;
		if (!attack_fatigue) {
			var _projectile = instance_create_layer(x, y, "Instances", obj_tiny_creature_projectile);
			_projectile.hspd = lengthdir_x(_projectile.projectile_speed, _angle);
			_projectile.vspd = lengthdir_y(_projectile.projectile_speed, _angle);
			_projectile.damage = damage;
			attack_fatigue = true;
			alarm[2] = attack_rate;
		}
	}
}

var _player_y = obj_player.y + y_bias;
time_offset += 1
base_y = obj_player.y + y_bias;
image_xscale = sign(obj_player.image_xscale) * .5;

x = (lerp(x, obj_player.x, .1) - sign(obj_player.image_xscale) * x_bias);
y = base_y + sin(time_offset  * floating_speed) * floating_range + (_player_y - base_y) * 0.1;