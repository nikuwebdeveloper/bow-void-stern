dead = false
switchSpew = true

if object_index == obj_fungus_ball
{
	var randFlip = irandom(1)
	var randSprite =  irandom(2)
	image_speed = 0
	if randFlip == 0
	{
		image_xscale = -1
	}
	if randSprite == 0
	{
		sprite_index = spr_fungus_yellowBall_1
	}
	else if randSprite == 1
	{
		sprite_index = spr_fungus_yellowBall_2
	}
	else if randSprite == 2
	{
		sprite_index = spr_fungus_yellowBall_3
	}
}
else if object_index == obj_fungus_cilia
{
	image_speed = 0
	var randFlip = irandom(1)
	var randSprite =  irandom(1)
	var randFrame = irandom(image_number - 1)
	image_index = randFrame
	if randSprite == 0
	{
		sprite_index = spr_fungus_cilia_1
	}
	else if randSprite == 1
	{
		sprite_index = spr_fungus_cilia_2
	}
	image_blend = c_yellow
}


