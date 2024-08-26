if instance_exists(target)
{
	xOffset = camera_get_view_width(view_camera[0]) / 2;
	yOffset = camera_get_view_height(view_camera[0]) / 2;

	x = x + (target.x - x - xOffset)// * sp;
	y = y + (target.y - y - yOffset) //* sp;

	x = clamp(x, 0, room_width - 480);
	y = clamp(y, 0, room_height - 270);

	camera_set_view_pos(view_camera[0],x,y)
}
