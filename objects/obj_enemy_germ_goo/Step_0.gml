if active
{
	visible = true
	if image_index == image_number - 1
	{
		active = false
		if place_meeting(x,y,obj_player)
		{
			obj_player.hpCurrent -= 5
		}
	}
}
else
{
	image_index = 0
	visible = false
}