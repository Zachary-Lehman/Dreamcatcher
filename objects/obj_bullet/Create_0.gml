scr_bullet_init();
//finds nearest enemy x and y
var enem_x = instance_nearest(x, y, obj_enemy).x;
var enem_y = instance_nearest(x, y, obj_enemy).y;
//assigns direction of bullet
direction = point_direction(x, y,enem_x+irandom_range(-bulletOffset, bulletOffset), enem_y+irandom_range(-bulletOffset, bulletOffset));
image_angle = direction;
