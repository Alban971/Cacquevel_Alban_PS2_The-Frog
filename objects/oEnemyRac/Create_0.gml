if (hasweapon)
{
	mygun = instance_create_layer(x,y,"Weapon",oERgun)
	with (mygun)
	{
		owner = other.id
	}
}
else mygun = noone;