/// @description Insert description here
// You can write your code in this editor

// Ensure movement will continue on the other side
move_wrap(true, true, 0)

if keyboard_check(vk_up)
{
	motion_add(image_angle, 0.1);
}

if keyboard_check(vk_left)
{
	image_angle +=4;
}

if keyboard_check(vk_right)
{
	image_angle -= 4;
}

if keyboard_check(vk_space)
{
	instance_create_layer(x, y, "Instances", obj_bullet);
}