if instance_exists(obj_camera)
{
	obj_camera.target = id
}

if obj_input.up_hold
{
	dir = "up"
	if vsp > -vspMax
	{
		vsp -= acc
	}
}
else if obj_input.down_hold
{
	dir = "down"
	if vsp < vspMax
	{
		vsp += acc
	}
}
if obj_input.left_hold
{
	dir = "left"
	if hsp > -hspMax
	{
		hsp -= acc
	}
}
else if obj_input.right_hold
{
	dir = "right"
	if hsp < hspMax
	{
		hsp += acc
	}
}

if !obj_input.up_hold and !obj_input.down_hold and !obj_input.left_hold and !obj_input.right_hold
{
	dir = "none"
	timerBubbleMax = timerBubbleMaxInitial
}

if obj_input.grab_press and toggleGrab
{
	toggleGrab = false
	grabber.reach = true

	grabber.target = instance_nearest(x,y,obj_pill_parent)

	
}
else if obj_input.grab_press and !toggleGrab
{
	toggleGrab = true
	grabber.reach = false
	grabber.target = noone
}


if vsp > 0
{
	vsp -= dcc
}
else if vsp < 0
{
	vsp += dcc
}

if hsp > 0
{
	hsp -= dcc
}
else if hsp < 0
{
	hsp += dcc
}


//make bubbles
if timerBubble < timerBubbleMax
{
	timerBubble++
}
else
{
	timerBubble = 0
	var bubble = instance_create_depth(x,y,depth + 1, obj_bubble)
	var angle = 0
	var bubbleSpeed = 0
	var bubbleMulti = irandom_range(11,15)
	if dir == "up"
	{
		angle = 270
		bubbleSpeed = -vsp
		timerBubbleMax = timerBubbleMaxInitial - (abs(vsp)  * bubbleMulti)
	}
	else if dir == "down"
	{
		angle = 90
		bubbleSpeed = vsp
		timerBubbleMax = timerBubbleMaxInitial - (abs(vsp)  * bubbleMulti)
	}
	else if dir == "left"
	{
		angle = 0
		bubbleSpeed = -hsp
		timerBubbleMax = timerBubbleMaxInitial - (abs(hsp) * bubbleMulti)
	}
	else if dir == "right"
	{
		angle = 180
		bubbleSpeed = hsp		
		timerBubbleMax = timerBubbleMaxInitial - (abs(hsp)  * bubbleMulti)
	}	
	else if dir == "none"
	{
		angle = 90
		timerBubbleMax = timerBubbleMaxInitial
	}
	bubble.direction = angle + irandom_range(-15,15)
	bubble.speed = bubbleSpeed + random_range(-0.1, 0.1)
}

if place_meeting(x,y, obj_wall_parent) or place_meeting(x,y,obj_enemy_parent)
{
	hsp = -hsp
	vsp = -vsp
}
if abs(vsp) < 0.1
{
	vsp = 0
}
if abs(hsp) < 0.1
{
	hsp = 0
}

x += hsp
y += vsp

//pill expand
if medicine
{
	sprite_index = spr_player_grow
	if image_index == image_number - 1
	{
		image_speed = 0
		if medicineBubble
		{
			medicineBubble = false
			var bubbleMulti = irandom_range(11,15)
			for (var i = 0; i < bubbleMulti; i++ )
			{
				var bubble = instance_create_depth(x,y,depth + 1, obj_bubble)
				var angle = irandom_range(0,360)
				bubble.direction = angle + irandom_range(-15,15)
				bubble.speed = 1 + random_range(-0.1, 0.1)
			}
		}
	}
	if place_meeting(x,y,obj_receptor)
	{
		if medicineGive
		{
			medicineGive = false
			var pill = instance_create_depth(x,y,depth, obj_pill_one)
			pill.recieve = true
			image_speed = -1
		}
	}
	//reset player sprite after giving medicine
	if sprite_index == spr_player_grow and image_speed == -1
	{
		if image_index == 0
		{
			medicine = false
			sprite_index = spr_player
		}
	}
}
else
{
	sprite_index = spr_player
}