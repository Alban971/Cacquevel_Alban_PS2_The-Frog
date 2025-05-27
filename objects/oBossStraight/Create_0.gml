dir = point_direction(x, y, oPlayer.x, oPlayer.y);
image_angle = dir;
direction = dir;
image_xscale = 4;
image_yscale = 4;
speed = 64*3;
alarm_set(1, 60*5);