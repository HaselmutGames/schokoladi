move_timer -= 1;
var _x_move = lengthdir_x(move_speed, direction);
var _y_move = lengthdir_x(move_speed, direction);

if(!place_meeting(x + _x_move, y + _y_move, obj_map_walls))
{
	x += _x_move;
	y += _y_move;
}
else
{
	// On collision, choose a new valid direction that isn't the previous one
    var _new_direction;
    var _valid_direction_found = false;

    for (var i = 0; i < 4; i++) { // Try up to 4 times (one for each direction)
        _new_direction = choose(0, 90, 180, 270);
        
        // Make sure the new direction isn't the same as the previous one
        if (_new_direction != previous_direction) {
            _x_move = lengthdir_x(move_speed, _new_direction);
            _y_move = lengthdir_y(move_speed, _new_direction);

            // Check if the new direction is valid (no collision)
            if (!place_meeting(x + _x_move, y + _y_move, obj_map_walls)) {
                _valid_direction_found = true;
                break;
            }
        }
	}
	// If a valid direction was found, update the direction
    if (_valid_direction_found) {
        previous_direction = direction;
        direction = _new_direction;
    }
}
if(move_timer <= 0)
{
	previous_direction = direction; // Store the current direction as the previous one
    direction = choose(0, 90, 180, 270); // Only allow cardinal directions
    move_timer = irandom_range(30, 90); // Reset the timer
} 
