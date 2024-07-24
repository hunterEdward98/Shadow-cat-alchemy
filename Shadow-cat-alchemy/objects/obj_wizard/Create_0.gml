// Create an empty list to store instances of Interactive objects
var target_list = ds_list_create();

// Find all instances of obj_interactive and add them to the list
with (obj_interactive) {
    ds_list_add(target_list, id);
}

// Check if there are any Interactive objects in the room
if (ds_list_size(target_list) > 0) {
    // Pick a random Interactive object from the list
    var random_index = irandom(ds_list_size(target_list) - 1);
    target_instance = target_list[| random_index];

    // You can now use target_instance for further operations
} else {
    target_instance = noone; // Set to noone if no targets are found
}

// Clean up and destroy the list
ds_list_destroy(target_list);
