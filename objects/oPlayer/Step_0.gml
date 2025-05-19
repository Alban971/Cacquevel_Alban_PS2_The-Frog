//Get Player Input

key_left = keyboard_check(vk_left) || keyboard_check(ord("Q"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

//Calculate Movement
var move = key_right - key_left;

hsp = (move * walksp)+inertia;

vsp = vsp + grv;
inertia = inertia-friction;

if (place_meeting(x,y+1,oWall)) && (key_jump)
{
	vsp = -7*16;
}

//Horizontal Collision
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
	inertia = 0;
	friction = 0;
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
	sprite_index = sPlayerA;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
	if (abs(hsp) > 0)
	{
		inertia = sign(hsp)*50;
		friction = -inertia;
	}

}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sPlayer;
	}
	else
	{
		sprite_index = sPlayerR;
	}
}
if (hsp != 0) image_xscale = sign(hsp);

if (place_meeting(x,y+1,oWall))
{
	inertia = 0;
	friction = 0;
}


if (mouse_check_button_pressed(mb_right))
{
	grap_x = mouse_x;
	grap_y = mouse_y;
	is_grapping = true;
}
if (is_grapping = true)
{
	grap_velocity_x = (grap_x - x);
	grap_velocity_y = (grap_y - y);
	
	
	
	is_grapping = false
}