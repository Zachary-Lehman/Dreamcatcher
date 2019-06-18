///scr_attacking
if(instance_number(obj_enemy)>0){
	if(stamina > 0){
		if(weaponType != 1){
			instance_create_depth(x, y+irandom_range(-bulletOffset, bulletOffset), 0, obj_bullet);
			stamina -= 3;
		}
	}
}