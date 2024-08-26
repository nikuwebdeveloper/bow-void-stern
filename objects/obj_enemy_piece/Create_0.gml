timerDeath = 0
timerDeathMax = 30 * irandom_range(1,3)
direction = irandom(360)
speed = random_range(0.25, 1)
sp = random_range(0.01, 0.03)
decc = 0.01

var xFlip = irandom(1)
var yFlip = irandom(1)

if xFlip == 0
{
	image_xscale = 1
}
else
{
	image_xscale = -1
}

if yFlip == 0
{
	image_yscale = 1
}
else
{
	image_yscale = -1
}
