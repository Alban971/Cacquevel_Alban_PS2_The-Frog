dir = point_direction(x, y, oPlayer.x, oPlayer.y);
image_angle = dir;
direction = dir;
image_xscale = 5;
image_yscale = 5;
speed = 64*4;
alarm_set(1, 60*5);