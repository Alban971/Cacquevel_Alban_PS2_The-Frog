if (PV < 4)
{
	PV += 1;
	//play song here
	audio_play_sound(snMenu,1,false);
	instance_destroy(other.id);
}