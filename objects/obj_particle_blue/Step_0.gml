if timerRandDir < timerRandDirMax
{
	timerRandDir++
}
else
{
	timerRandDir = 0
	timerRandDirMax = irandom_range(60*.25, 60*1)
	direction += irandom(30)
}

if timerDeath < timerDeathMax
{
	timerDeath++
}
else
{
	var particle0 = instance_create_depth(x + 2, y, depth, obj_particle_yellow)
	var particle1 = instance_create_depth(x - 2, y, depth, obj_particle_yellow)
	particle0.speed = random_range(speed + 0.5, speed + 1.5)
	particle1.speed = random_range(-speed + -0.5, -speed + -1.5)
	particle0.direction = direction + irandom_range(-15,15)
	particle1.direction = direction + irandom_range(-15,15)
	instance_destroy()
}

if speed > 0
{
	speed -= fric
}