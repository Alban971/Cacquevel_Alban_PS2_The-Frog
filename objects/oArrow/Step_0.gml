x += lengthdir_x(spd,direction);
y += lengthdir_y(spd,direction);


if (place_meeting(x,y,pShootable))
{
	with (instance_place(x,y,pShootable))
	{
		
		hp--;
		flash = 3;
		hitfrom = other.direction;
	}
	audio_sound_pitch(snFlcPlant1,choose(0.8,1.0,1.2));
	audio_play_sound(snFlcPlant1,1,false);
	instance_destroy();
}


if (place_meeting(x,y,oWall))
{
	while (place_meeting(x,y,oWall))
	{
		x -= lengthdir_x(1,direction);
		y -= lengthdir_y(1,direction);
	}
	spd = 0;
	audio_sound_pitch(snFlcPlant,choose(0.8,1.0,1.2));
	audio_play_sound(snFlcPlant,1,false);
	instance_change(oHitSpark,true);
}


