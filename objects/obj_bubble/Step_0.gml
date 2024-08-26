if timerDeath < timerDeathMax
{
	timerDeath++
}
else
{
	if sprite_index != spr_bubble_burst
	{
		image_index = 0
	}
	sprite_index = spr_bubble_burst
	if sprite_index == spr_bubble_burst
	{
		if image_index == image_number - 1
		{
			instance_destroy()
		}
	}
}


if speed > 0
{
	speed -= decc
}
vspeed -= sp