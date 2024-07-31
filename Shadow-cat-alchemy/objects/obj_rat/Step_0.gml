
// Step Event
if (state == "run") {
    if (target_instance != noone && place_meeting(x, y, target_instance)) {
        state = "bite";
        speed = 0;
        // Play the bite animation
        sprite_index = ani_RatBite;
        image_speed = 1;
		
    } else {
        // Move towards the target
        if (target_instance != noone) {
            direction = point_direction(x, y, target_instance.x, target_instance.y);
        }
    }
}
