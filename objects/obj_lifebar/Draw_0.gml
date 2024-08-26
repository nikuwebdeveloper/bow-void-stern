for (var i = 0; i < obj_player.hpMax / 10; i++)
{
	draw_sprite(spr_lifebar_middle_empty,0, x + (i * 16), y)
}
for (var j = 0; j < hpShrunk; j++)
{
	draw_sprite(spr_lifebar_middle_filled,0, x + (j * 16), y)
	if j == hpShrunk - 1
	{
		if hpRemainder >= 5 and hpCurrent < hpMax
		{
			draw_sprite(spr_lifebar_middle_filled,0, x + (hpShrunk * 16), y)
		}
	}
}