x = oPlayer.x;
y = oPlayer.y;

image_angle = point_direction(x,y,mouse_x,mouse_y);

atkdelay = atkdelay - 1;
if (mouse_check_button_pressed(mb_left)) && (atkdelay < 0)
{
		atkdelay = 20;
		audio_sound_pitch(snSlash,choose(0.8,1.0,1.2));
		audio_play_sound(snSlash,5,false);
		with (instance_create_layer(x,y,"Atk",oAtk))
		{
			direction = other.image_angle;
			image_angle = direction;
			alarm_set(1,8);
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