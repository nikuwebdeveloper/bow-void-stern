if timerDeath < timerDeathMax
{
	timerDeath++
}
else
{
	sprite_index = spr_green_explode
	if image_index == image_number - 1
	{
		instance_destroy()
	}
}

if speed > 0
{
	speed -= fric
}