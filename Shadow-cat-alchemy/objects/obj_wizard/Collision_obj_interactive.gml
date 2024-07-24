/// @description Insert description here
// You can write your code in this editor
// Create an empty list to store instances of Interactive objects
if(other.id == target_instance.id){
	
	
	animation_timer = 230
	//TODO special animation stuff here
	//We might want to store a spritemap of the animation in the object we're colliding with, 
	//that way we just set use the other.wizard_collision_sprite and other.wizard_animation_time 
	//properties rather than having to do custom logic here
	
	
	// Create an empty list to store instances of Interactive objects
	var target_list = ds_list_create();

	// Find all instances of obj_interactive and add them to the list
	with (obj_interactive) {
		if(other.id != id){
			ds_list_add(target_list, id);
		}
	}

	// Check if there are any Interactive objects in the room
	if (ds_list_size(target_list) > 0) {
		// Pick a random Interactive object from the list
		var random_index = irandom(ds_list_size(target_list) - 1);
		target_instance = target_list[| random_index];
	}
}