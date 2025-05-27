if !SafeFrame
{
	with (instance_place(x,y,oBossKill))
	{
		global.bossHP -= 2;
		flash = 3;
	}
	SafeFrame = true;
	alarm_set(2,40);
}
