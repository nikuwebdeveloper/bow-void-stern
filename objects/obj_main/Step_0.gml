if room == room_gameplay
{
	if switchGrid
	{
		switchGrid = false
		instance_create_depth(0,0,0,obj_grid)
	}
	if switchLayerRead
	{
		switchLayerRead = false;
		//layers
		tileLayer = layer_get_id("layer_tile_wall");
		//tilemap ids
		tileIdSpace = layer_tilemap_get_id(tileLayer);
		//randomize grass
		var rmWidth = room_width/16
		var rmHeight = room_height/16
		for (var i = 0; i < rmWidth; i++)
		{
			for (var j = 0; j < rmHeight; j++)
			{				
				var rand = irandom_range(0, 10)
				if tilemap_get_at_pixel(tileIdSpace, i * 16, j * 16) == 12
				{
					if rand == 0
					{
						tilemap_set_at_pixel(tileIdSpace,10, i * 16,  j * 16)
					}
					else if rand == 1
					{
						tilemap_set_at_pixel(tileIdSpace,20, i * 16,  j * 16)
					}
				}

				//wall creation
				var up = 2
				var right = 13
				var down = 22
				var left = 11
				var upLeft = 1
				var upRight = 3
				var downLeft = 21
				var downRight = 23
				var diagUpLeft = 4
				var diagUpRight = 5
				var diagDownLeft = 14
				var diagDownRight = 15
				
				var arrayDirPurpleVeins = [2, 13, 22, 11, 1, 3, 21, 23]
				var arrayDirDiagPurpleVeins = [4, 5, 14, 15]
				var arrayDirYellowBall = [30,31,32,33,34,35,40,45,50,55,60,65,70,75,80,81,82,83,84,85]
				var arrayDirDiagYellowBall = [37, 38, 46, 49,  56, 59,67,68]
				for (var k = 0; k < array_length(arrayDirPurpleVeins); k++)
				{
					if tilemap_get(tileIdSpace,i,j) == arrayDirPurpleVeins[k]
					{
						instance_create_depth(i * 16, j* 16, depth - 100, obj_wall)
					}
				}
				for (var k = 0; k < array_length(arrayDirYellowBall); k++)
				{
					if tilemap_get(tileIdSpace,i,j) == arrayDirYellowBall[k]
					{
						instance_create_depth(i * 16, j* 16, depth - 100, obj_wall)
					}
				}
				for (var m = 0; m < array_length(arrayDirDiagPurpleVeins); m++)
				{
					if tilemap_get(tileIdSpace,i,j) == arrayDirDiagPurpleVeins[m]
					{
						var target = instance_create_depth(i * 16, j* 16, depth - 100, obj_wall_diag)
						switch  m
						{
							case 0:
								target.image_xscale = -1
								target.x += 16
							break;
							case 2:
								target.image_xscale = -1
								target.image_angle = 90
							break;
							case 3:
								target.image_yscale = -1
								target.y += 16
							break;
						}
					}
				}
				for (var m = 0; m < array_length(arrayDirDiagYellowBall); m++)
				{
					if tilemap_get(tileIdSpace,i,j) == arrayDirDiagYellowBall[m]
					{
						var target = instance_create_depth(i * 16, j* 16, depth - 100, obj_wall_diag)
						switch  m
						{
							case 0:
								target.image_xscale = -1
								target.x += 16
							break;
							case 2:
								target.image_xscale = -1
								target.x += 16
							break;
							case 4:
								target.image_xscale = -1
								target.image_yscale = -1
								target.x += 16
								target.y += 16
							break
							case 5:
								target.image_yscale = -1
								target.y += 16
							break;
							case 6:
								target.image_yscale = -1
								target.image_xscale = -1
								target.x += 16
								target.y += 16
							break;
							case 7:
								target.image_yscale = -1
								target.y += 16
							break;
						}
					}
				}				
			}
		}
	}
}