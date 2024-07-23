// Check the state and update the sprite accordingly
if (is_on && sprite_index != spr_on) {
	global.light_level ++;
    sprite_index = spr_on;
}
if (!is_on && sprite_index != spr_off) {
	global.light_level --;
    sprite_index = spr_off;
}
