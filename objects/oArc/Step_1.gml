x = oPlayer.x;
y = oPlayer.y;

image_angle = point_direction(x,y,mouse_x,mouse_y);

firingdelay = firingdelay - 1;
if (mouse_check_button_released(mb_left)) && (firingdelay < 0)
{
		firingdelay = 30;
		audio_sound_pitch(snShot,choose(0.8,1.0,1.2));
		audio_play_sound(snShot,5,false);
		with (instance_create_layer(x,y,"Arrows",oArrow))
		{
			spd = 25*16;
			direction = other.image_angle + random_range(-3,3);
			image_angle = direction;
		}
		game_set_speed(60,gamespeed_fps);
}

if (mouse_check_button(mb_left)) && (firingdelay < 0)
{
		game_set_speed(30,gamespeed_fps);
}



if (image_angle > 90) && (image_angle < 270)
{
	image_yscale = -1;
}
else
{
	image_yscale = 1;
}