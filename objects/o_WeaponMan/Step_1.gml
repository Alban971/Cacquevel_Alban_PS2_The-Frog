if (oArc)
{
	haveArc = true;
}
if (oSword)
{
	haveSword = true;
}

if (haveArc) && (keyboard_check(ord("z")))
{
	instance_destroy(oArc);
	instance_create_layer(oSword)
}

if (haveSword) && (keyboard_check(ord("z")))
{
	instance_destroy(oSword);
	instance_create_layer(oArc)
}