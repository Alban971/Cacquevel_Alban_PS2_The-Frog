x += lengthdir_x(spd,direction);
y += lengthdir_y(spd,direction);

if (instance_exists(oPlayer))
{
	if (point_distance(oPlayer.x,oPlayer.y,x,y) < 150*16)
	{
		image_angle = point_direction(x,y,oPlayer.x,oPlayer.y);
	}
}
if (image_angle > 90) && (image_angle < 270)
{
	image_yscale = -1;
}
else
{
	image_yscale = 1;
}
