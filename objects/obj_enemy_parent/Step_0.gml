if instance_exists(obj_player)
{
	//find player location
	xx = obj_player.x
	yy = obj_player.y
	
	if distance_to_object(obj_player) <= aggroRange
	{
		aggro = true
	}
	
	if aggro
	{
		if pathBlocked
		{
			if !place_meeting(x,y,obj_enemy_parent)
			{
				move_towards_point(xx,yy,sp)
			}
			else
			{
				speed = 0
			}
		}
		
		//run new path
		if timerPath < timerPathMax
		{
			timerPath++
		}
		else
		{
			timerPath = 0
			path_end()
			//delete old grid spaces
			mp_grid_clear_all(gridAvoid)
			//re-add all walls
			mp_grid_add_instances(gridAvoid, obj_wall_parent, true)
			//find enemies that aren't you
			for (var i = 0; i < instance_number(obj_enemy_parent); i++)
			{
				var currentEnemy = instance_find(obj_enemy_parent, i)
				with currentEnemy
				{
					for (var j = 0; j < instance_number(obj_enemy_parent); j++)
					{
						var notMe = noone
						if instance_find(obj_enemy_parent, j) != id
						{
							notMe = instance_find(obj_enemy_parent, j)
							mp_grid_add_instances(gridAvoid, notMe, true)
						}
					}
				}
			}
			//move
			if mp_grid_path(gridAvoid, path, x, y, xx, yy, true)
			{
				pathBlocked = false
				path_start(path, sp, path_action_continue, true)
			}
			//path blocked
			else
			{
				pathBlocked = true
			}
		}
		//if path blocked, take potential step towards player
	}
	//reach player
	if distance_to_object(obj_player) < 8
	{
		path_end()
		if attackTimer != attackTimerMax
		{
			attackTimer++
		}
		else
		{
			attackTimer = 0
			//hit player with goos
			if object_index == obj_enemy_green
			{
				goo.active = true
				var angleDir = point_direction(x,y, obj_player.x,obj_player.y)
				var knockback = 1
				if angleDir > 45 and angleDir <= 135
				{
					goo.image_angle = 90
					obj_player.vsp -= knockback
				}
				else if angleDir > 135 and angleDir <= 225
				{
					goo.image_angle = 180
					obj_player.hsp += knockback
				}
				else if angleDir > 225 and angleDir <= 315
				{
					goo.image_angle = 270
					obj_player.vsp += knockback
				}
				else if angleDir > 315 or angleDir <= 45
				{
					goo.image_angle = 0
					obj_player.hsp -= knockback
				}
			}
		}
		

	}
	//get hit by sword
	if place_meeting(x,y,obj_player.sword) and switchHitSword
	{
		switchHitSword = false
		with obj_player.sword
		{
			if visible
			{
				if switchAudio
				{
					switchAudio = false
					//audio_play_sound(sound_sword,0,0)
				}
				other.hp -= dmg
				var angleDir = point_direction(x,y, other.x,other.y)
				var knockback = 3
				if angleDir > 45 and angleDir <= 135
				{
					other.vspeed -= knockback
				}
				else if angleDir > 135 and angleDir <= 225
				{
					other.hspeed -= knockback
				}
				else if angleDir > 225 and angleDir <= 315
				{
					other.vspeed = knockback
				}
				else if angleDir > 315 or angleDir <= 45
				{
					other.hspeed = knockback
				}
				for (var i = 0; i < irandom_range(4,6); i++)
				{
					var spark = instance_create_depth(other.x, other.y, depth-10, obj_spark)
					if angleDir > 45 and angleDir <= 135
					{
						spark.direction = 270
						xOffset = 0
						yOffset = 16
					}
					else if angleDir > 135 and angleDir <= 225
					{
						spark.direction = 0
						xOffset = 16
						yOffset = 0
					}
					else if angleDir > 225 and angleDir <= 315
					{
						spark.direction = 90
						xOffset = 0
						yOffset = -16
					}
					else if angleDir > 315 or angleDir <= 45
					{
						spark.direction = 180
						xOffset = -16
						yOffset = 0
					}
					spark.speed = random_range(1,2)
					spark.direction += random_range(-60,60)
					spark.x += xOffset
					spark.y += yOffset
				}
			}
		}
	}
	else if !place_meeting(x,y,obj_player.sword) or !obj_player.sword.visible
	{
		switchHitSword = true
	}
	
	//get hit by electricity
	if place_meeting(x,y,obj_player_electricity) and obj_player_electricity.visible and switchHitElectricity
	{
		switchHitElectricity = false
		with obj_player_electricity
		{
			if active
			{
				other.hp -= dmg
				var angleDir = point_direction(x,y, other.x,other.y)
				var knockback = 3
				if angleDir > 45 and angleDir <= 135
				{
					other.vspeed -= knockback
				}
				else if angleDir > 135 and angleDir <= 225
				{
					other.hspeed -= knockback
				}
				else if angleDir > 225 and angleDir <= 315
				{
					other.vspeed = knockback
				}
				else if angleDir > 315 or angleDir <= 45
				{
					other.hspeed = knockback
				}
				for (var i = 0; i < irandom_range(4,6); i++)
				{
					var spark = instance_create_depth(other.x, other.y, depth-10, obj_spark)
					if angleDir > 45 and angleDir <= 135
					{
						spark.direction = 270
						xOffset = 0
						yOffset = 16
					}
					else if angleDir > 135 and angleDir <= 225
					{
						spark.direction = 0
						xOffset = 16
						yOffset = 0
					}
					else if angleDir > 225 and angleDir <= 315
					{
						spark.direction = 90
						xOffset = 0
						yOffset = -16
					}
					else if angleDir > 315 or angleDir <= 45
					{
						spark.direction = 180
						xOffset = -16
						yOffset = 0
					}
					spark.speed = random_range(1,2)
					spark.direction += random_range(-60,60)
					spark.x += xOffset
					spark.y += yOffset
				}
			}
		}
	}
	else if !place_meeting(x,y,obj_player_electricity) or !obj_player_electricity.active
	{
		switchHitElectricity = true
	}
}

if speed < 0.1
{
	vspeed = 0
}
if hp <= 0
{
	instance_destroy()
}

if object_index == obj_enemy_ashy
{
	var dir = point_direction(x,y,obj_player.x, obj_player.y)
	direction = dir
	image_angle = dir + 180
	//speed = 1
}

