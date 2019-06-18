///draws UI and test variables
draw_set_alpha(1);
draw_text(50, 50, stamina);
draw_text(100, 50, currentState);
draw_text(150, 50, selected);
draw_text(800, 50, "stamina");
draw_text(200, 50, image_angle);
draw_text(250, 50, attacking);
if(instance_number(obj_bullet)>0){
}
if (selected = true){
	draw_healthbar(900, 30, 950, 200, stamina, c_dkgray, c_red, c_blue, 3, true, true);
}
//draws vision cone
draw_set_alpha(.3){
	draw_triangle_color(x, y, x+lengthdir_x(coneOfSightLength,coneLeft), y+lengthdir_y(coneOfSightLength,coneLeft), x+lengthdir_x(coneOfSightLength,coneRight),y+lengthdir_y(coneOfSightLength,coneRight),c_yellow, c_yellow, c_yellow, false);
}

