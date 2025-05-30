if (hasweapon)
{
	mygun = instance_create_layer(x,y,"Weapon",oEgun)
	with (mygun)
	{
		owner = other.id
	}
}
else mygun = noone;
sprite_index = sEnemyA;
image_xscale = 2;
image_yscale = 2;