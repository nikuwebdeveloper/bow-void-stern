if !sick
{
	if frameReset
	{
		frameReset = false
		sprite_index = spr_receptor_grow
		image_index = 0
	}
	
	if image_index >= image_number - 1 
	{
		image_speed = 0
		finished = true
	}
}

if finished
{
	if finishedSwitch
	{
		finishedSwitch = false
		for (var i = 0; i < irandom_range(18,24); i++)
		{
			var particle = instance_create_depth(x, y - 32, depth - 1, obj_particle_blue)
			particle.direction = irandom(360)
			particle.speed = random_range(1,1.75)
		}
	}
	if timerHeal < timerHealMax
	{
		timerHeal++
	}
	else
	{
		areaHeal = true
	}
}
if areaHeal
{
	with obj_fungus_cilia
	{
		if distance_to_object(other) < 256
		{
			if other.colorChangeAmount < 1
			{
				other.colorChangeAmount += other.colorChangeRate
				image_blend = merge_color(c_yellow, c_white, other.colorChangeAmount);
			}
			else
			{
				if image_speed < 1
				{
					image_speed += 0.05
				}
			}
		}
		else if distance_to_object(other) >= 256 and distance_to_object(other) < 256 + 128
		{
			if other.colorChangeAmount2 < 1
			{
				other.colorChangeAmount2 += other.colorChangeRate
				image_blend = merge_color(c_yellow, #f8ffc2, other.colorChangeAmount2);
			}
			else
			{
				if image_speed < 0.9
				{
					image_speed += 0.05
				}
			}
		}
		else if distance_to_object(other) >= 256 + 128 and distance_to_object(other) < 256 + 128 + 64
		{
			if other.colorChangeAmount3 < 1
			{
				other.colorChangeAmount3 += other.colorChangeRate
				image_blend = merge_color(c_yellow, #efff71, other.colorChangeAmount3);
			}
			else
			{
				if image_speed < 0.8
				{
					image_speed += 0.05
				}
			}
		}
	}
}