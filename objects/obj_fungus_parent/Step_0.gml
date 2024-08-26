if object_index == obj_fungus_ball
{
	if place_meeting(x,y,obj_player) and image_index == 0
	{
		image_speed = 1
		dead = true
	}

	if image_index == image_number - 1
	{
		image_speed = 0
	}

	if image_index >= 1
	{
		if switchSpew
		{
			switchSpew = false
			for (var i = 0; i < irandom_range(8,12); i++)
			{	
				var xRand = irandom_range(-4,4)
				var yRand = irandom_range(-4,4)
				var particle = instance_create_depth(x + xRand, y + yRand, depth - 1, obj_particle_green)
				particle.direction = image_angle + 90 + irandom_range(-45,45)
				particle.speed = random_range(1,2)
			}
		}
	}
}