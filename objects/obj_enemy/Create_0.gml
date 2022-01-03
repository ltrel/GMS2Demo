if(path_exists(patrol_path)) {
	path_start(patrol_path, patrol_speed, path_action_continue, true);
}
grid_path = path_add();
player = instance_find(obj_player, 0);