
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

if(!is_attacking){
//POUNCE event

if (mouse_check_button(1)){
		sprite_index = spr_cat_pounce;
		vspeed = (max_jump_dst * vector_y) / 15;
		hspeed = (max_jump_dst * vector_x) / 15;
		is_pouncing = true;
		is_attacking = true;
	var endPounce = function(){
		obj_cat.sprite_index = spr_cat_idle;
		obj_cat.is_pouncing = false;
		vspeed = 0;
		hspeed = 0;
	}
	var endAttack = function(){
		obj_cat.is_attacking = false;
	}
	var pounceTimer = call_later(0.5, time_source_units_seconds, endPounce);
	var cooldownTimer = call_later( global.light_level / 2, time_source_units_seconds, endAttack )
}


////STALK event
if(!is_pouncing){
	if (keyboard_check(ord("S"))){
         vspeed = -vector_y *( stalk_speed * (12 /( global.light_level + 3)));	
		 hspeed = -vector_x *( stalk_speed * (12 / (global.light_level + 3)));
	}
	else if (keyboard_check(ord("W"))){
         vspeed = vector_y *( stalk_speed * (12 /( global.light_level + 3)));	
		 hspeed = vector_x *(stalk_speed * (12 / (global.light_level + 3)));
	}else{
		hspeed = 0;
		vspeed = 0;
	}
}


//Slash Event
if(mouse_check_button_pressed(2)){
	slashWave =  instance_create_layer(x + (50*vector_x), y + (50 *vector_y), "Projectiles", obj_slash);
	sprite_index = spr_cat_slash
	slashWave.image_angle = point_direction(player_x, player_y, mouse_x_pos, mouse_y_pos)- 90;
	slashWave.direction = image_angle + 90;
	is_attacking = true;
	
	//Handle sprite removal
	var _fadeOut = function(){
		is_attacking = false;
		instance_destroy(slashWave);
		obj_cat.sprite_index = spr_cat_idle;
	}
	var slashTimer = call_later(0.33 *  global.light_level, time_source_units_seconds, _fadeOut);
}


//HACK event
if(keyboard_check(vk_space)){
	var new_hairball = instance_create_layer(x, y, "Projectiles", obj_shadow_hairball);
	// Set the speed and direction of the hairball
	new_hairball.speed = 5; // Adjust the speed value as needed
	new_hairball.direction = image_angle + 90; // Set the direction (e.g., the direction the player is facing)
	is_attacking = true;
	
	var _fadeOut = function(){
		is_attacking = false;
		
	}
	var slashTimer = call_later(0.33 * global.light_level, time_source_units_seconds, _fadeOut);

}


} else if (!is_pouncing){
	vspeed = 0;
	hspeed = 0;
}