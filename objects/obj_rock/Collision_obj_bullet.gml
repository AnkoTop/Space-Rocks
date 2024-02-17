/// @description Insert description here
// You can write your code in this editor

obj_game.points +=50;

instance_destroy(other);



if sprite_index == spr_rock_big {
	if rock_big_life == 0 {
		effect_create_above(ef_explosion, x, y, 1, c_orange);
		sprite_index = spr_rock_small;
		instance_copy(true);
	} else {
		effect_create_above(ef_flare, x, y, 2, c_orange);
		rock_big_life -= 1;
	}
}
else if instance_number(obj_rock) < 12 {
	effect_create_above(ef_explosion, x, y, 1, c_yellow);

	sprite_index = spr_rock_big;
	x = -100;
}
else {
	effect_create_above(ef_explosion, x, y, 1, c_yellow);
	instance_destroy();
}

direction = random(360);