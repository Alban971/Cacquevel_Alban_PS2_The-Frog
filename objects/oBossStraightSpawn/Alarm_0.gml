/*if oPlayer
{
	if not instance_exists(oBossKill)
	{
		if stSpawn == true
		{
			instance_create_layer(x, y, "Enemy", oBossStraight);
			alarm_set(0, irandom_range(60*2, 60*6));
			stSpawn =false;
		}
	}
	else
	{
		alarm_set(0, irandom_range(60*2, 60*6));
	}
	randomize();
}