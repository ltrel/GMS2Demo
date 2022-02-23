// Cursor setup
cursor_sprite = spr_crosshair;
window_set_cursor(cr_none);

// Pathfinding grid
var cell_size = 16;
var columns = room_width / cell_size;
var rows = room_height / cell_size;
global.grid = mp_grid_create(0, 0, columns, rows, cell_size, cell_size);
// Only walls block paths, doors can be opened
mp_grid_add_instances(global.grid, obj_wall_1, true);
mp_grid_add_instances(global.grid, obj_wall_2, true);

global.game_won = false;
global.room_won = false;
global.player_alive = true;