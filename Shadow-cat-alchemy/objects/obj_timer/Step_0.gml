/// @description Insert description here
// You can write your code in this editor
// Step Event
if (time_remaining > 0) {
    time_remaining -= 1; // Decrease time by 1 second (assuming room_speed is 1 per second)

    // Format time into minutes and seconds
    var minutes = floor(time_remaining / 6000);
    var seconds = int64((time_remaining mod 6000)/100);
    display_time = string_format(minutes, 2, 0) + ":" + string_format(seconds, 2, 0);
}
else{
	room_goto(scrn_Lose);
}