if object_index == obj_enemy_green
{
	goo.x = x
	goo.y = y
}


if x == xprevious and y == yprevious
{
	stuck = true
}
else
{
	stuck = false
}
//if timerPath >= timerPathMax
//{
//	if mp_grid_path(gridAvoid, path, x, y, xx, yy, true)  and (x == xprevious and y == yprevious)
//	{
//		show_message("stuck")
//	}
//}