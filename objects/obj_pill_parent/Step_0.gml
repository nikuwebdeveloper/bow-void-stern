if instance_exists(obj_player)
{
	depth = obj_player.depth + 1
	if !recieve
	{
		if distance_to_object(obj_player) < 32
		{
			attract = true
		}
		if attract
		{
			if distance_to_point(obj_player.x, obj_player.y) >= 1
			{
				direction = point_direction(x,y,obj_player.x,obj_player.y)
				speed += sp
			}
			else
			{
				obj_player.medicine = true
				instance_destroy()	
			}
		}
	}
	else
	{
		if distance_to_point(obj_receptor.x, obj_receptor.y - 32) <= 16
		{
			down = true
		}
		else
		{
			direction = point_direction(x,y,obj_receptor.x,obj_receptor.y - 32)
			speed = 1
		}
		if down
		{
			if distance_to_point(obj_receptor.x, obj_receptor.y + 16) <= 1
			{
				obj_receptor.sick = false
				instance_destroy()
			}
			else
			{
				direction = point_direction(x,y,obj_receptor.x,obj_receptor.y + 16)
				speed = 1
			}
		}
	}
}