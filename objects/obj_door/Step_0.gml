if distance_to_object(obj_player) < 32 or distance_to_object(obj_enemy_parent) < 32
{
	open = true
	image_speed = -1
}
else
{
	open = false
	image_speed = 1
}

if image_speed == 1
{
	//last frame
	if image_index == image_number - 1
	{
		image_speed = 0
	}
}
else if image_speed == -1
{
	//first frame
	if image_index == 0
	{
		image_speed = 0
	}
}