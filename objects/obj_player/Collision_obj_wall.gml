var target_x = x;
var target_y = y;

x = xprevious;
y = yprevious;

var x_distance = abs(target_x - x);
var y_distance = abs(target_y - y);

repeat(x_distance) {
	if(place_free(x + sign(target_x - x), y)) {
		x += sign(target_x - x);
	}
	else {
		break;
	}
}
repeat(y_distance) {
	if(place_free(x, y + sign(target_y - y))) {
		y += sign(target_y - y);
	}
	else {
		break;
	}
}