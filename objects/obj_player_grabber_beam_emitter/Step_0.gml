if instance_exists(obj_player_grabber)
{
	image_angle = obj_player_grabber.image_angle
	depth = obj_player_grabber.depth + 1
}


if frameTimer < frameTimerMax
{
	frameTimer++
}
else
{
	frameTimer = 0
	if frame < maxFrame
	{
		frame++
	}
	else
	{
		frame = 0
	}
}
