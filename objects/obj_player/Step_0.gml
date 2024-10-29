var _right_key = keyboard_check(vk_right);
var _left_key = keyboard_check(vk_left);
var _up_key = keyboard_check(vk_up);
var _down_key = keyboard_check(vk_down);
var _bullets

xspeed = 0;
yspeed = 0;

if(!variable_instance_exists(id, "direction"))
{
	_player_direction = 0;
}
// Movement logic and setting direction
if(_right_key || _left_key)
{
	xspeed = (_right_key - _left_key) * move_speed;
	if (_right_key) 
	{
        sprite_index = spr_player_right; // Facing right
		_player_direction = 0;
    }
	else
	{
        sprite_index = spr_player_left; // Facing left
		_player_direction = 180;
    }
}
else if(_up_key || _down_key)
{
	yspeed = (_down_key - _up_key) * move_speed;
	if (_down_key)
	{
        sprite_index = spr_player_down; // Facing up
		_player_direction = 270;
    }
	else
	{
        sprite_index = spr_player_up; // Facing down
		_player_direction = 90;
    }
}
// Collision with map walls
if (place_meeting(x + xspeed, y, obj_map_walls) || place_meeting(x + xspeed, y, obj_ghost))
{
	xspeed = 0;
}
if (place_meeting(x, y + yspeed, obj_map_walls) || place_meeting(x, y + yspeed, obj_ghost))
{
	yspeed = 0;
}
// End of collisions
// Decrementing the invincibility timer if it's greater than 0
if(_invincibility_time > 0){
	_invincibility_time -= 1;
}

// Shooting logic
if (mouse_check_button_pressed(mb_left)){
	if(_player_direction == 0)
	{
		_bullets = instance_create_layer(x + 4, y, "Instances", obj_bullet);
		// Setting the bullet's direction to match the player's direction
		_bullets.direction = _player_direction;
	}
	if(_player_direction == 90)
	{
		_bullets = instance_create_layer(x, y - 4, "Instances", obj_bullet);
		// Setting the bullet's direction to match the player's direction
		_bullets.direction = _player_direction;
	}
	if(_player_direction == 180)
	{
		_bullets = instance_create_layer(x - 4, y, "Instances", obj_bullet);
		// Setting the bullet's direction to match the player's direction
		_bullets.direction = _player_direction;
	}
	if(_player_direction == 270)
	{
		_bullets = instance_create_layer(x, y + 4, "Instances", obj_bullet);
		// Setting the bullet's direction to match the player's direction
		_bullets.direction = _player_direction;
	}
}

x += xspeed;
y += yspeed;