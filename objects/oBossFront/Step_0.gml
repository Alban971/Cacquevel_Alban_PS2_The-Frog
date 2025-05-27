if image_xscale < 5 and image_yscale < 5 and !is_big
{
	image_xscale += 0.1;
	image_yscale += 0.1;
}
else if is_big
{
	image_xscale -= 0.1;
	image_yscale -= 0.1;
	can_atk = false;
}
else
{
	image_speed = 1;
}
if image_xscale <= 0
{
	instance_destroy();
}

switch image_index
{
	case 0:
	case 1:
	case 2:
	case 9:
		can_atk = false;
	break;
	case 3:
	case 4:
	case 5:
	case 6:
	case 7:
	case 8:
		can_atk = true;
	break;
}