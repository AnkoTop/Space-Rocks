/// @description Insert description here
// You can write your code in this editor

// Ensure movement will continue on the other side
move_wrap(true, true, 0)

if keyboard_check(vk_up) {
	motion_add(image_angle, 0.1);
	sprite_index = spr_player_move;
} else {
	if keyboard_check(vk_down) {
		motion_add(image_angle, -0.1);
		sprite_index = spr_player_move;
	} else {
		sprite_index = spr_player;
	}
}



if keyboard_check(vk_left) {
	image_angle +=4;
}

if keyboard_check(vk_right) {
	image_angle -= 4;
}

if keyboard_check(vk_space){
	if shot_cooldown <= 0 {
		instance_create_layer(x, y, "Instances", obj_bullet);
		audio_play_sound(snd_shot, 10, false)
		shot_cooldown = 8;
	}	else {
		shot_cooldown -= 1
		}
}