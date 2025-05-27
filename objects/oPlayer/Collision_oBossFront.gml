if (!SafeFrame && oBossFront.can_atk)
{
	PV -= 1;
	audio_sound_pitch(snAie,choose(0.8,1.0,1.2));
	audio_play_sound(snAie,1,false);
	alarm_set(2,60)
	SafeFrame = true;
}