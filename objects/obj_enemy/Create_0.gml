if(path_exists(patrol_path)) {
	path_start(patrol_path, patrol_speed, path_action_continue, true);
}
chase_path = path_add();