// If the player or an enemy is close to the door, open it
if(distance_to_object(obj_player) < 14 || distance_to_object(obj_enemy) < 14) {
	is_open = true;
	image_index = 1;
}
else {
	is_open = false;
	image_index = 0;
}