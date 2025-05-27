/*if oPlayer
{
	if not instance_exists(oBossKill)
	{
		if ftSpawn == true
		{
			instance_create_layer(oPlayer.x, oPlayer.y, "Enemy", oBossFront);
			alarm_set(0, irandom_range(60*2, 60*6));
			ftSpawn = false;
		}
	}
	else
	{
		alarm_set(0, irandom_range(60*2, 60*6));
	}
	randomize();
}