/// @description Insert description here
// You can write your code in this editor

var lose = function(){
	room_goto(Lose);
}
global.time_remaining = 600;
var slashTimer = call_later(600, time_source_units_seconds, lose);
