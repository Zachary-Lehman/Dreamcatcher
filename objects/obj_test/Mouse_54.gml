///creates target and moves toward it then destroys it
if (target != -1 && instance_exists(obj_target)){
	instance_destroy(obj_target);	
}
if (selected = true){
	target = instance_create_depth(mouse_x, mouse_y, 0, obj_target);
	currentState = states.move;
		if (stamina <= 0){
		currentState = states.idle;	
		}
}
