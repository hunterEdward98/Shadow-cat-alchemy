if (target_instance != noone) {
    // Get the position of the target Interactive object
    var target_x = target_instance.x;
    var target_y = target_instance.y;

    // Calculate the direction to the target
    direction = point_direction(x, y, target_x, target_y);

    // Set the speed and direction of the obj_wizard object
	if(animation_timer > 0){
		animation_timer--;
		sprite_index = ani_WizardInteract;  //should be interaction
		speed = 0;
	}else{ 
		sprite_index = ani_WizardWalk;
		image_angle = point_direction(x, y, target_x, target_y);
		speed = 2
	};
} else {
    // Handle the case where there is no target instance
	sprite_index = spt_Wizard_Idle;
    speed = 0; // or some other logic
}