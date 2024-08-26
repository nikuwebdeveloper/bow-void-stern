with sword
{
	x = obj_player.x + xOffset
	y = obj_player.y + yOffset
}
with electricity
{
	x = obj_player.x
	y = obj_player.y
}
with grabber
{
	if !visible
	{
		x = obj_player.x
		y = obj_player.y
	}
}