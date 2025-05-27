if !SafeFrame
{
	with (instance_place(x,y,oBossStraight))
	{
		oBossHealth.bossHP-=2;
		flash = 3;
	}
	SafeFrame = true;
	alarm_set(2,40);
}
