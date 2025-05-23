if (!SafeFrame)
{
	PV -= 1;
	alarm_set(2,60)
	SafeFrame = true;
}

with (other) instance_destroy();
