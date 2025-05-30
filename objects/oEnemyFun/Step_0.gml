vsp = vsp + grv;
grv = random_range(-0.5,0.5);
walksp = random_range(1*16,3*16);
show_debug_message(grv)
//Don't walk off edges
if (grounded) && (afraidofheights) && (!place_meeting(x+hsp,y+1,oWall))
{
	hsp = -hsp;
}

//Horizontal Collision
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;
}
x = x + hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

//Animation
if (!place_meeting(x,y+1,oWall))
{
	grounded = false;
}
if (hsp != 0) image_xscale = sign(hsp) * size;
image_yscale = size;
