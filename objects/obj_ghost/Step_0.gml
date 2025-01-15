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
// Check for collisions with walls, ghosts before moving
if(!place_meeting(x + _xmove, y, obj_map_walls) && !place_meeting(x + _xmove, y, obj_ghost))
{
	x += _xmove;
}
else
{
	direction = choose(0, 90, 180, 270);
}
if(!place_meeting(x, y + _ymove, obj_map_walls) && !place_meeting(x, y + _ymove, obj_ghost))
{
	y += _ymove;
}
else
{
	direction = choose(0, 90, 180, 270);
}