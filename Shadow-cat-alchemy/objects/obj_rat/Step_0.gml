
// Get the position of the target Interactive object
    var target_x = target_instance.x;
    var target_y = target_instance.y;
    
    // Calculate the direction to the target
    direction = point_direction(x, y, target_x, target_y);
    
    // Set the speed and direction of the Rat object
    speed = 3;