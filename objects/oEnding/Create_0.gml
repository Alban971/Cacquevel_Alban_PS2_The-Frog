layer_get_id("TitleAssets");
endtext[0] = "Tu as réussi...";
endtext[1] = "Tu as vaincu Shade...";
endtext[2] = "Et tu as sauvé la jungle de ses térribles agissements !";

spd = 0.5;
letters = 0;
currentline = 0;
length = string_length(endtext[currentline]);
text = "";

instance_destroy(oSword);
instance_destroy(oArc);