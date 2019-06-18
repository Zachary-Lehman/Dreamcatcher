//runs different scripts based on current state
switch currentState {
	case states.idle:
	scr_test_idle();
	break;
	
	case states.move:
	scr_test_move();
	break;
	
}

if (attacking = true){
	scr_attacking();	
}
if(selected = true){
	image_angle = point_direction(x, y, mouse_x, mouse_y);
}
if (stamina <= 0){
	currentState = states.idle;		
}

if (!place_meeting(x, y, obj_mouseCursor)){
	if (selected = false){
		sprite_index = spr_test;
	}
}

//creates cone of vision
coneLeft = (image_angle+coneOfSightLeft) mod 360;
coneRight = (image_angle+coneOfSightRight+360) mod 360;
if(instance_number(obj_enemy)>0){
	var x0 = instance_nearest(x, y, obj_enemy).x;
	var y0 = instance_nearest(x, y, obj_enemy).y;
}
else {
	var x0 = 0;
	var y0 = 0;
}
var x1 = x+lengthdir_x(coneOfSightLength,coneLeft);
var y1 = y+lengthdir_y(coneOfSightLength,coneLeft)
var x2 = x+lengthdir_x(coneOfSightLength,coneRight);
var y2 = y+lengthdir_y(coneOfSightLength,coneRight);
//predicts stamina use
predictedStaminaUse = stamina - (distance_to_object(obj_mouseCursor)*staminaUse*-1*.212);
//makes character attack or not
if (point_in_triangle(x0, y0, x, y, x1, y1, x2, y2)){
	attacking = true;
}

if (!point_in_triangle(x0, y0, x, y, x1, y1, x2, y2)){
	attacking = false;
}

if (weapon = 1){
	scr_unarmed_init();
}

if (weapon = 2){
	scr_assaultRifle_int();
}

scr_change_weapon();