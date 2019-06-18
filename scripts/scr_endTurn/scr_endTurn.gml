///scr_endTurn

//ends turn
if (mouse_check_button_pressed(mb_left)){
	if (place_meeting(x,y, obj_mouseCursor)){
		scr_test_init.stamina = 100;
		instance_destroy(obj_target);
		image_alpha = 1;
	}
}