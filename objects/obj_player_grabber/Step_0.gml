depth = obj_player.depth + 1

if reach
{
	visible = true
	depth = target.depth - 1
	if distance_to_point(target.x, target.y) > 0
	{	
		if sp < spMax
		{
			sp += acc
		}
		move_towards_point(target.x,target.y, sp)
	}
	else
	{
		sp = 0
		speed = sp
	}
	if target != noone
	{
		image_angle = point_direction(obj_player.x,obj_player.y, target.x, target.y)
	}
	if makeBeam
	{
		makeBeam = false
		beam = instance_create_depth(obj_player.x, obj_player.y,depth, obj_player_grabber_beam_emitter)
	}
	if instance_exists(beam)
	{
		playerDist = distance_to_object(obj_player)
		playerDistChunk = floor(playerDist / 16)
		beam.long = playerDistChunk
	}
}
else
{
	image_angle = point_direction(obj_player.x,obj_player.y, x, y)
	if distance_to_point(obj_player.x,obj_player.y) > 0
	{
		if sp < spMax
		{
			sp += acc
		}
		move_towards_point(obj_player.x,obj_player.y, sp)
	}
	else
	{
		visible = false
		sp = 0
		speed = sp
	}
}
