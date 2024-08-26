if obj_input.up_attack
{
	dir = "up"
	xOffset = 0
	yOffset = -offset
}
else if obj_input.down_attack
{
	dir = "down"
	xOffset = 0
	yOffset = offset
}
else if obj_input.left_attack
{
	dir = "left"
	xOffset = -offset
	yOffset = 0
}
else if obj_input.right_attack
{
	dir = "right"
	xOffset = offset
	yOffset = 0
}

if !obj_input.up_attack and !obj_input.down_attack and !obj_input.left_attack and !obj_input.right_attack
{
	dir = "none"
	xOffset = 0
	yOffset = 0
}
 
if obj_input.up_attack or obj_input.down_attack or obj_input.left_attack or obj_input.right_attack
{
	//if !visible
	//{
	//	sprite_index = spr_player_sword
	//}
	visible = true
	if dir == "up"
	{
		image_angle = 0
	}
	else if dir == "down"
	{
		image_angle = 180
	}
	if dir == "left"
	{
		image_angle = 90
	}
	else if dir == "right"
	{
		image_angle = 270
	}
	else if dir == "none"
	{
		visible = false
		image_angle = 0
	}
}
if image_index == image_number - 1
{
	visible = false
	switchAudioSlash = true
}


//if obj_input.attack_press


if visible
{
	if switchAudioSlash
	{
		//audio_play_sound(sound_sword_slash,0,0)
		switchAudioSlash = false
	}
	image_speed = 1
}
else
{
	image_index = 0
	image_speed = 0
}

//else if !place_meeting(x,y,obj_enemy_parent)
//{
//	switchAudio = true
//	switchKnockback = true
//}

//if obj_input.up_hold
//{
//	dir = "up"
//	xOffset = 0
//	yOffset = -offset
//}
//else if obj_input.down_hold
//{
//	dir = "down"
//	xOffset = 0
//	yOffset = offset
//}
//else if obj_input.left_hold
//{
//	dir = "left"
//	xOffset = -offset
//	yOffset = 0
//}
//else if obj_input.right_hold
//{
//	dir = "right"
//	xOffset = offset
//	yOffset = 0
//}

//if !obj_input.up_hold and !obj_input.down_hold and !obj_input.left_hold and !obj_input.right_hold
//{
//	dir = "none"
//	xOffset = 0
//	yOffset = 0
//}
 
//if obj_input.up_hold or obj_input.down_hold or obj_input.left_hold or obj_input.right_hold
//{
//	if !visible
//	{
//		sprite_index = spr_player_sword
//	}
//}

//if obj_input.attack_press
//{
//	visible = true
//	if dir == "up"
//	{
//		image_angle = 0
//	}
//	else if dir == "down"
//	{
//		image_angle = 180
//	}
//	if dir == "left"
//	{
//		image_angle = 90
//	}
//	else if dir == "right"
//	{
//		image_angle = 270
//	}
//	else if dir == "none"
//	{
//		visible = false
//		image_angle = 0
//	}
//}
//if image_index == image_number - 1
//{
//	visible = false
//	switchAudioSlash = true
//}

//if visible
//{
//	if switchAudioSlash
//	{
//		//audio_play_sound(sound_sword_slash,0,0)
//		switchAudioSlash = false
//	}
//	image_speed = 1
//}
//else
//{
//	image_index = 0
//	image_speed = 0
//}

////else if !place_meeting(x,y,obj_enemy_parent)
////{
////	switchAudio = true
////	switchKnockback = true
////}