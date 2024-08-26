var rand = irandom(1)
if rand == 0
{
	sprite_index = spr_bubble_small
}
else if rand == 1
{
	sprite_index = spr_bubble_medium
}

timerDeath = 0
timerDeathMax = 30*irandom_range(2,3)

sp = random_range(0.01, 0.03)
decc = 0.01