dir = point_direction(x, y, oPlayer.x, oPlayer.y);
image_angle = dir;
direction = dir;
speed = 64*3;
alarm_set(1, 60*5);