// Randomly determine if the light source is on or off
is_on = irandom(1) > 0; // irandom(1) gives 0 or 1
global.light_level = 1;

spr_off = spr_light_source_off;
spr_on = spr_light_source_on;