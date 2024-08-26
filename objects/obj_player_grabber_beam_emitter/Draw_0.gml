var dist = point_distance(obj_player.x, obj_player.y, obj_player_grabber.x, obj_player_grabber.y)
var angle = point_direction(obj_player.x, obj_player.y, obj_player_grabber.x, obj_player_grabber.y) 
var xShift = 0
if obj_player_grabber.y > obj_player.y
{
	xShift = 8
}
else
{
	xShift = -8
}
draw_sprite_general(spr_beam_full, frame, 0, 0, dist,16,x+xShift,y,1,1,angle,c_white,c_white,c_white,c_white,1)
//draw_self();