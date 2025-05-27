if (avance && x > 8000) {
	move_towards_point(8000, 16900, 50);
}
else if !avance move_towards_point(20500, 16900, 100);
else if(x < 8000 ){ alarm_set(1,1); speed = 0;}

if(x > 20500) instance_destroy();