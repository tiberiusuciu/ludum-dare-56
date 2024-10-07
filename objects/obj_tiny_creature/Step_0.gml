/// @description Insert description here
// You can write your code in this editor
var _target = instance_nearest(x, y, obj_creature)
if (_target != noone) {

	if (abs(_target.x - x) <= 200 && abs(_target.y - y) <= 200) {
		var _mx = obj_player.x;
		var _my = obj_player.y;
		var _angle = point_direction(x, y, _mx, _my);
		var _attack_x = x + lengthdir_x(32, _angle); // 32 is the distance from the player
		var _attack_y = y + lengthdir_y(32, _angle) - 10;
		if (!attack_fatigue) {
			var _attack = instance_create_layer(_attack_x, _attack_y, "Instances", obj_enemy_attack);
			_attack.source = self;
			_attack.image_angle = _angle;
			attack_fatigue = true;
			alarm[2] = attack_rate;
		} else if (attack_fatigue) {
			var _projectile = instance_create_layer(x, y, "Instances", obj_tiny_creature_projectile);
			_projectile.hspd = lengthdir_x(abs(_target.x - x), _angle);
			_projectile.vspd = lengthdir_y(abs(_target.y - y), _angle);;
			_projectile.damage = damage;
		}
	}
}

x = lerp(x, obj_player.x, .1);
y = lerp(y, obj_player.y, .1);