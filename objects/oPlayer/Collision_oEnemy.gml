/// @desc Die
with (oArc) instance_destroy();
with (oSword) instance_destroy();
instance_change(oPDead,true);

direction = point_direction(other.x,other.y,x,y);
hsp = lengthdir_x(6*16,direction);
vsp = lengthdir_y(4*16,direction)-4*16;
if (sign(hsp) != 0)image_xscale = sign(hsp);