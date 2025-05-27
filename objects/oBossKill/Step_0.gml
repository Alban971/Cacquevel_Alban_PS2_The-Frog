if (avance && x > 8000) {
	move_towards_point(8000, 16900, 100);
}
else if !avance move_towards_point(20500, 16900, 100);
else if(x < 8000 ){ if(alarm_get(1)<=0) {alarm_set(1,60*5);} speed = 0;}

if(x > 20500) instance_destroy();