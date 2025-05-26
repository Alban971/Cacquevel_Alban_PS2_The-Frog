if not instance_exists(oBossStraight) and not instance_exists(oBossFront)
{
	instance_create_layer(oPlayer.x, oPlayer.y, "Enemy", oBossFront);
	alarm_set(0, irandom_range(60*2, 60*6));
}
else
{
	alarm_set(0, irandom_range(60*2, 60*6));
}
randomize();