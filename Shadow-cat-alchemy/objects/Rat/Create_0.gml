// Get a list of all instances of Interactive objects
var target_list = ds_list_create();
instance_find(Interactive, target_list);

// Check if there are any Interactive objects in the room
if (ds_list_size(target_list) > 0) {
	show_message(ds_list_size(target_list)+ "list length")
    // Pick a random Interactive object from the list
    var random_index = irandom(ds_list_size(target_list) - 1);
    var target_instance = target_list[| random_index];
    
    // Get the position of the target Interactive object
    var target_x = target_instance.x;
    var target_y = target_instance.y;
    
    // Calculate the direction to the target
    direction = point_direction(x, y, target_x, target_y);
    
    // Set the speed and direction of the Rat object
    speed = 4; // Adjust the speed as needed
    motion_set(direction, speed);
}

// Clean up the list
ds_list_destroy(target_list);
