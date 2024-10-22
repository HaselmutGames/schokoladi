// Check if we need to change direction
if(move_timer <= 0)
{
    // Pick a random direction: 0 (right), 90 (up), 180 (left), or 270 (down)
    direction = choose(0, 90, 180, 270);
    // Change direction after 30-60 steps
	move_timer = irandom_range(30, 60); 
}

// Reset step timer as it decreases each step
move_timer -= 1;

// Movement logic based on current direction
var _xmove = 0;
var _ymove = 0;

switch(direction)
{
    case 0:
		_xmove = move_speed;	 // Moving right
		break;   
    case 90:
		_ymove = -move_speed;	// Moving up
		break;  
    case 180:
		_xmove = -move_speed;	// Moving left
		break; 
    case 270: 
		_ymove = move_speed;	// Moving down
		break;  
}

// Check for collisions with walls before moving
if(!place_meeting(x + _xmove, y, obj_map_walls))
{
    x += _xmove;
}
else
{
    // Hit a wall, so change direction immediately
    move_timer = 0;
}

if(!place_meeting(x, y + _ymove, obj_map_walls))
{
    y += _ymove;
}
else
{
    // Hit a wall, so change direction immediately
    move_timer = 0;
}