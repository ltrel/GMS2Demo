var x_dest = mouse_x;
var y_dest = mouse_y;

if (mp_grid_path(global.grid, chase_path, x, y, x_dest, y_dest, true)) {
	path_start(chase_path, chase_speed, path_action_stop, false);
}