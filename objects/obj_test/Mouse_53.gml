//sets state
if (collision_rectangle(x-8, y-8, x+8, y+8, obj_mouseCursor, true, false)){
sprite_index = spr_test_player_selected;	
selected = true;
}
if (!collision_rectangle(x-8, y-8, x+8, y+8, obj_mouseCursor, true, false)){
sprite_index = spr_test;
selected = false;
}
