if (hasweapon)
{
	mygun = instance_create_layer(x,y,"Weapon",oEgun)
	with (mygun)
	{
		owner = other.id
	}
}
else mygun = noone;