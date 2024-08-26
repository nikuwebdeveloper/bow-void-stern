if obj_input.attack_press
{
	//player isn't pressing any directions
	if obj_player_sword.dir == "none"
	{
		active = true
	}
}

if active
{
	if switchRotate
	{
		switchRotate = false
		var rand = irandom(3)
		var dir = 0
		if rand == 0
		{
			dir = 0
		}
		else if rand == 1
		{
			dir = 90
		}
		else if rand == 2
		{
			dir = 180
		}
		else
		{
			dir = 270
		}
		image_angle = dir
	}
	visible = true
	image_speed = 1
	//end of the grow
	if image_index == image_number - 1
	{
		if sprite_index == spr_electricity_grow
		{
			sprite_index = spr_electricity_sustain
			image_index = 0
		}
		else if sprite_index == spr_electricity_sustain
		{
			sprite_index = spr_electricity_break
			image_index = 0
		}
		else if sprite_index == spr_electricity_break
		{
			active = false
			visible = false
			image_index = 0
		}
	}
}
else
{
	sprite_index = spr_electricity_grow
	image_index = 0
	image_speed = 0
	switchRotate = true
}