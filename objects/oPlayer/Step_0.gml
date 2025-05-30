//Get Player Input

if (hascontrol)
{
	key_left = keyboard_check(vk_left) || keyboard_check(ord("Q"));
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_space);
}
else
{
	key_right = 0;
	key_left = 0;
	key_jump = 0;
}

//Calculate Movement
var move = key_right - key_left;

hsp = (move * walksp)+inertia;

vsp = vsp + grv;
inertia = inertia-friction;

//Jumping
canjump -= 1;
if (canjump > 0) && (key_jump)
{
	vsp = -7*16;
	canjump = 0;
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
x = (x + hsp);

//Vertical Collision
if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = (y + vsp);



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
	canjump = 8;
	if (sprite_index == sPlayerA)
	{
		audio_sound_pitch(snLanding,choose(0.8,1.0,1.2));
		audio_play_sound(snLanding,4,false);
		repeat(5)
		{
			with (instance_create_layer(x,bbox_bottom,"Arrows",oDust))
			{
				vsp = 0;
			}
		}
	}
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

//Inertie

if (place_meeting(x,y+1,oWall))
{
	inertia = 0;
	friction = 0;
}

//Death
if (PV <= 0)
{
	instance_destroy(oArc);
	instance_destroy(oSword);
	instance_destroy(oWeaponMan);
	KillPlayer();
}
