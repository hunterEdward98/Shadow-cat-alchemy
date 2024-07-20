
// Get the player's position
var player_x = x;
var player_y = y;

// Get the mouse position
var mouse_x_pos = mouse_x;
var mouse_y_pos = mouse_y;
// Calculate the vector from the player to the mouse
var vector_x = mouse_x_pos - player_x;
var vector_y = mouse_y_pos - player_y;

// Calculate the length of the vector
var vector_length = point_distance(0, 0, vector_x, vector_y);

// Normalize the vector
if (vector_length != 0) {
    vector_x /= vector_length;
    vector_y /= vector_length;
}
if (mouse_check_button(1)){
	if(keyboard_key_press(vk_control)){
	    //handle STALK controls
	}
	else{
		x += vector_x * min(max_jump, vector_length);
		y += vector_y * min(max_jump, vector_length);
	}
}