grid_size = 24;
grid_color = c_aqua;
draw_set_color(grid_color);
draw_set_alpha(0.35);
for(i = -room_width; i < room_width * 2; i+= grid_size) {
	draw_line(i, -room_height, i, room_height * 2);
}
for(i = -room_height; i < room_height * 2; i+= grid_size) {
	draw_line(-room_width, i, room_width * 2, i);
}
draw_set_alpha(1);