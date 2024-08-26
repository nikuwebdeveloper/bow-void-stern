if timerDeath < timerDeathMax
{
	timerDeath++
}
else
{
	if image_index == image_number - 1
	{
		instance_destroy()
	}
}