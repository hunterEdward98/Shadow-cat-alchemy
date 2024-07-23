// Randomly determine if the light source is on or off
is_on = irandom(1) > 0; // irandom(1) gives 0 or 1

// Assign the sprite variables
spr_off = spr_light_source_on;
spr_on = spr_light_source_off;

// Set the initial sprite based on the state
if (is_on) {
	global.light_level ++;
    sprite_index = spr_on;
} else {
    sprite_index = spr_off;
}
