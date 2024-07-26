
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

image_angle = point_direction(player_x, player_y, mouse_x_pos, mouse_y_pos)- 90;


//POUNCE event
if (mouse_check_button(1)){
	 if(attack_timer <= 0){
		image_angle = point_direction(player_x, player_y, mouse_x_pos, mouse_y_pos)- 90;
		attack_timer = 30 * global.light_level;
		x += vector_x * min(max_jump, vector_length);
		y += vector_y * min(max_jump, vector_length);
	}
}


////STALK event
if (keyboard_check(ord("D"))){
         hspeed = stalk_speed * (12 /( global.light_level + 3));
} else if (keyboard_check(ord("A"))){
         hspeed = -stalk_speed * (12 / (global.light_level + 3));
} else {
         hspeed = 0;
}

if (keyboard_check(ord("W"))){
         vspeed = -stalk_speed * (12 /( global.light_level + 3));	 
} else if (keyboard_check(ord("S"))){
         vspeed = stalk_speed * (12 /( global.light_level + 3));
} else {
         vspeed = 0;
}


//Slash Event
if(mouse_check_button_pressed(2)){ 
	slashWave =  instance_create_layer(x + 30, y + 30, "Projectiles", obj_slash);
	slashWave.image_angle = point_direction(player_x, player_y, mouse_x_pos, mouse_y_pos)- 90;
	slashWave.direction = image_angle + 90;
	with (obj_rat) {
	if (point_distance(other.x, other.y, x, y) < 100) {
			// Destroy the obj_rat instance
			instance_destroy();			
		}
	}
	//Handle sprite removal
	var _fadeOut = function(){
		obj_slash.image_alpha -= 1;
	}
	var slashTimer = call_later(0.3, time_source_units_seconds, _fadeOut);
}


//HACK event
if(keyboard_check(vk_space) && attack_timer <=0){
	var new_hairball = instance_create_layer(x, y, "Projectiles", obj_shadow_hairball);
	// Set the speed and direction of the hairball
	new_hairball.speed = 5; // Adjust the speed value as needed
	new_hairball.direction = image_angle + 90; // Set the direction (e.g., the direction the player is facing)
	attack_timer = 20 * global.light_level;
}


if(attack_timer > 0){
	with (obj_rat) {
		if (point_distance(other.x, other.y, x, y) < 100) {
			// Destroy the obj_rat instance
			instance_destroy();
		}	
	}
	attack_timer--;
}