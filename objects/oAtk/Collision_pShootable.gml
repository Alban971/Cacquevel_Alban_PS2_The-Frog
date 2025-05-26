if !SafeFrame
{
	with (instance_place(x,y,pShootable))
	{
		hp-=2;
		flash = 3;
		hitfrom = other.direction;
	}
	SafeFrame = true;
	alarm_set(2,40);
}
