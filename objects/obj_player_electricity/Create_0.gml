active = false
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
dmg = 2
mask_index = spr_electricity_mask