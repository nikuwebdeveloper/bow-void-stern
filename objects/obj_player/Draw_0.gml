//if electricity.visible
//{
//	draw_sprite(spr_electricity_mask,0,x,y)
//}

//shift offset for player eye based on movement
var xOffset = 0
var yOffset = 0
if obj_input.up_hold
{
	yOffset =  -1
}
else if obj_input.down_hold
{
	yOffset =  1
}
if obj_input.left_hold
{
	xOffset =  -1
}
else if obj_input.right_hold
{
	xOffset =  1
}
draw_sprite(spr_player_eye, 0, x + xOffset, y + yOffset)
draw_self()