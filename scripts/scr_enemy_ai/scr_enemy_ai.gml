// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
enum pathfinding_states {
	patrolling,
	chasing,
	returning
}

function player_visible() {
	if(!global.player_alive || distance_to_object(obj_player) > 512) {
		return false;
	}
	var wall_1_hit = collision_line(x, y, player.x, player.y, obj_wall_1, true, true);
	var wall_2_hit = collision_line(x, y, player.x, player.y, obj_wall_2, true, true);
	var door_hit = collision_line(x, y, player.x, player.y, obj_door, false, true);
	var closed_door_hit = door_hit && (!door_hit.is_open);
	return !wall_1_hit && !wall_2_hit && !closed_door_hit;
}

// Returns whether the path was started
function pathfind_to_point(x_dest, y_dest, move_speed) {
	if(mp_grid_path(global.grid, grid_path, x, y, x_dest, y_dest, true)) {
		path_start(grid_path, move_speed, path_action_stop, false);
		return true;
	}
	else {
		return false;
	}
}

function enemy_movement() {
	switch(pathfinding_state) {
		case pathfinding_states.patrolling:
			// If the player is visible and reachable, start chasing them
			if(player_visible() && pathfind_to_point(player.x, player.y, chase_speed)) {
				pathfinding_state = pathfinding_states.chasing;
			}
			break;
		
		case pathfinding_states.chasing:
			// Check if our path is finished
			if(path_position == 1) {
				// If the player is still visible try to update the path and continue,
				// otherwise pathfind back to our start position
				if(!(player_visible() && pathfind_to_point(player.x, player.y, chase_speed))) {
					if(pathfind_to_point(xstart, ystart, patrol_speed)) {
						pathfinding_state = pathfinding_states.returning;
					}
					// If for whatever reason we can't pathfind back to our start position,
					// set our state straight back to patrolling, but remain still
					else {
						pathfinding_state = pathfinding_states.patrolling;
					}
				}
			}
			break;
		
		case pathfinding_states.returning:
			// If we see the player on our way back, resume chasing if possible
			if(player_visible() && pathfind_to_point(player.x, player.y, chase_speed)) {
				pathfinding_state = pathfinding_states.chasing;
			}
			// Otherwise wait until we've finished returning and start patrolling
			else if(path_position == 1) {
				// If there is no patrol path just remain still
				if(path_exists(patrol_path)) {
					path_start(patrol_path, patrol_speed, path_action_continue, true);
				}
				pathfinding_state = pathfinding_states.patrolling;
			}
			break;
	}
}

