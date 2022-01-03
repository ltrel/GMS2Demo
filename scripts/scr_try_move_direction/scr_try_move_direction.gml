function inside_room(x_pos, y_pos) {
	return x_pos >= 0 && x_pos<= room_width && y_pos >= 0 && y_pos <= room_height;
}

function can_move_to(x_pos, y_pos) {
	return inside_room(x_pos, y_pos) && place_free(x_pos, y_pos);
}

function try_move_direction(dir, distance) 
{
	// Calculate where we want to move to
	var target_x = x + dcos(dir) * distance;
	var target_y = y + -dsin(dir) * distance;

	// Move there if possible
	if(can_move_to(target_x, target_y)){
		x = target_x;
		y = target_y;
	}

	// Otherwise move one pixel at a time along each axis until we hit something
	else {
		var x_distance = abs(target_x - x);
		var y_distance = abs(target_y - y);

		repeat(x_distance) {
			if(can_move_to(x + sign(target_x - x), y)) {
				x += sign(target_x - x);
			}
			else {
				break;
			}
		}
		repeat(y_distance) {
			if(can_move_to(x, y + sign(target_y - y))) {
				y += sign(target_y - y);
			}
			else {
				break;
			}
		}
	}
}