vsp = 0
vspMax = 2

hsp = 0
hspMax = 2

acc = 0.03
dcc = 0.02

sp = 1
switchKnockback = true
switchHitSword = true
switchHitElectricity = true

switchKnockbackEnemy = true

hp = 10

attackTimer = 60*1.5
attackTimerMax = 60*1.5

timerPath = 0
timerPathMax = 5

pathBlocked = false

cellWidth = 8
cellHeight = 8

hCells = room_width div cellWidth
vCells = room_height div cellHeight

gridAvoid = mp_grid_create(0, 0, hCells, vCells, cellWidth, cellHeight)
mp_grid_add_instances(gridAvoid, obj_wall_parent, true)

switchPathAvoid = true
path = path_add();

bumpTarget = noone

timerBounce = 0
timerBounceMax = 60

stuck = false

timerGrowl = irandom_range(60*5,60*8)
timerGrowlMax = irandom_range(60*10,60*15)

aggro = false
aggroRange = 256

switchGoo = true

if object_index == obj_enemy_green
{
	goo = instance_create_depth(x,y,depth+1, obj_enemy_germ_goo)
	goo.visible = false
	mask_index = spr_hitbox_small
}

guide = false

