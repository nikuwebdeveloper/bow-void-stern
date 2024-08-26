up_hold = keyboard_check(ord("W"))
down_hold = keyboard_check(ord("S"))
left_hold = keyboard_check(ord("A"))
right_hold = keyboard_check(ord("D"))

grab_press = keyboard_check_pressed(vk_space)

left_attack = keyboard_check_pressed(vk_left)
right_attack =keyboard_check_pressed(vk_right)
up_attack = keyboard_check_pressed(vk_up)
down_attack = keyboard_check_pressed(vk_down)


escape_press = keyboard_check_pressed(vk_escape)
reset_press = keyboard_check_pressed(vk_f1)
fullscreen_press = keyboard_check_pressed(vk_f12)

attack_press = keyboard_check_pressed(vk_control)

input_press = keyboard_check_pressed(ord("E"))

if escape_press
{
	game_end()
}
else if reset_press
{
	game_restart()
}
else if fullscreen_press
{
	if window_get_fullscreen()
	{
		window_set_fullscreen(false)
	}
	else
	{
		window_set_fullscreen(true)
	}
}