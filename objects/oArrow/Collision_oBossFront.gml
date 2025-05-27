with (instance_place(x,y,oBossFront))
{
	oBossHealth.bossHP-=1;
	flash = 3;
}
audio_sound_pitch(snFlcPlant1,choose(0.8,1.0,1.2));
audio_play_sound(snFlcPlant1,1,false);
instance_destroy();

