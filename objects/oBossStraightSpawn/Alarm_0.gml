if oPlayer
{
	if not instance_exists(oBossFront) and not instance_exists(oBossStraight)
	{
		instance_create_layer(x, y, "Enemy", oBossStraight);
		alarm_set(0, irandom_range(60*2, 60*6));
	}
	else
	{
		alarm_set(0, irandom_range(60*2, 60*6));
	}
	randomize();
}