mp_grid_destroy(gridAvoid)
//audio_play_sound(sound_enemy_die_1,0,0)
randNumPiece = irandom_range(8,12)
for (var i = 0; i < randNumPiece; i++)
{
	var xRand = irandom_range(-10,10)
	var yRand = irandom_range(-10,10)
	var target = instance_create_depth(x + xRand,y + yRand,depth,obj_enemy_piece)
	var rand = irandom(1)
	if rand == 0
	{
		target.sprite_index = spr_enemy_piece_green_big
	}
	else if rand == 1
	{
		target.sprite_index = spr_enemy_piece_green_small
	}
}
if object_index == obj_enemy_green
{
	if instance_exists(goo)
	{
		instance_destroy(goo)	
	}
}