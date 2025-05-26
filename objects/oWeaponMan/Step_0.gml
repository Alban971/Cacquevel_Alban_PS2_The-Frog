if (weaponEquip == "Arc")
{
	if(!instance_exists(oArc)) instance_create_layer(oPlayer.x,oPlayer.y,"Weapon",oArc);
	if(instance_exists(oSword))
	{
		instance_destroy(oSword);
	}
}

if (weaponEquip == "Sword")
{
	if(!instance_exists(oSword)) instance_create_layer(oPlayer.x,oPlayer.y,"Weapon",oSword);
	if(instance_exists(oArc))
	{
		instance_destroy(oArc);
	}
}