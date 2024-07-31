/// @description Insert description here
// You can write your code in this editor
// Assign the sprite variables
// Set the initial sprite based on the state
if (is_on) {
	global.light_level ++;
    sprite_index = spr_on;
} else {
    sprite_index = spr_off;
}
