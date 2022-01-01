// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move_camera(player_x, player_y) {
	var half_view_width = camera_get_view_width(view_camera[0]) / 2;
	var half_view_height = camera_get_view_height(view_camera[0]) / 2;
	
	// Move the camera slightly in the direction of the mouse
	var mouse_x_offset = (window_mouse_get_x() - half_view_width) / 5;
	var mouse_y_offset = (window_mouse_get_y() - half_view_height) / 5;
	
	var view_x = player_x - half_view_width + mouse_x_offset;
	var view_y = player_y - half_view_height + mouse_y_offset;
	camera_set_view_pos(view_camera[0], view_x, view_y);
}