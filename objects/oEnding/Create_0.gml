layer_get_id("TitleAssets");
endtext[0] = "Tu as reussi...";
endtext[1] = "Tu as vaincu Shade...";
endtext[2] = "Et tu as sauve la jungle de ses terribles agissements !";

spd = 0.5;
letters = 0;
currentline = 0;
length = string_length(endtext[currentline]);
text = "";

instance_destroy(oSword);
instance_destroy(oArc);

audio_play_sound(snJungleAmbiance,10,true);
audio_play_sound(snJungleMusic,10,true);