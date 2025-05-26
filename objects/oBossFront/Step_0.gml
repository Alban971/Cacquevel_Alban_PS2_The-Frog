if image_xscale < 5 and image_yscale < 5 and !is_big
{
	image_xscale += 0.1;
	image_yscale += 0.1;
}
else
{
	is_big = true;
	alarm_set(1,120)
}
if image_xscale <= 0
{
	instance_destroy();
}
