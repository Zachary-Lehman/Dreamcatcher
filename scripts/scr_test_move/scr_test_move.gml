///scr_test_move

//sets friction to 0
friction = .5;

//move toward target if it it exists, checks if stamina is above zero
if (stamina > 0){
	if (instance_exists(obj_target)){
	motion_add(point_direction(x, y, obj_target.x, obj_target.y), acc);	
	//drains stamina while moving
	stamina += staminaUse;
}
}

if (stamina < 0){
	currentState = states.idle;	
}

	//delete target when reached
	if (position_meeting(x, y, obj_target)){
		instance_destroy(obj_target);	
		currentState = states.idle;
	}	
//sets max speed
if (speed > spd){
	speed = spd;	
}
