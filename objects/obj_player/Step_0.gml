var _right_key = keyboard_check(vk_right);
var _left_key = keyboard_check(vk_left);
var _up_key = keyboard_check(vk_up);
var _down_key = keyboard_check(vk_down);

xspeed = 0;
yspeed = 0;

if(_right_key || _left_key)
{
	xspeed = (_right_key - _left_key) * move_speed;
	if (_right_key) 
	{
        sprite_index = spr_player_right; // Facing right
    }
	else
	{
        sprite_index = spr_player_left; // Facing left
    }
}
else if(_up_key || _down_key)
{
	yspeed = (_down_key - _up_key) * move_speed;
	if (_down_key)
	{
        sprite_index = spr_player_down; // Facing up
    }
	else
	{
        sprite_index = spr_player_up; // Facing down
    }
}

//collisions
if place_meeting(x + xspeed, y, obj_map_walls) == true
{
	xspeed = 0;
}
if place_meeting(x, y + yspeed, obj_map_walls) == true
{
	yspeed = 0;
}
//if place_meeting(x + xspeed, y, obj_ghost) == true
//{
//	instance_destroy(self);
	
//}
//if place_meeting(x, y + yspeed, obj_ghost) == true
//{
//	instance_destroy(self);
//}
//end-collisions

x += xspeed;
y += yspeed;

	//if (keyboard_check(vk_up || vk_down || vk_left || vk_right))
	//{
	//	speed = 4;
	//	if (keyboard_check(vk_up &&  !place_meeting(x, y - speed, obj_game)))
	//	{
	//		sprite_index = spr_player;
	//		image_index = 0;
	//		direction = 90;
	//		image_angle = 90;
	//		y -= speed;
	//	}

	//	if (keyboard_check(vk_left))
	//	{
	//		sprite_index = spr_player_left;
	//		image_index = 0;
	//		direction = 180;
	//		image_angle = 0;
	//	}

	//	if (keyboard_check(vk_down))
	//	{
	//		sprite_index = spr_player;
	//		image_index = 0;
	//		direction = 270;
	//		image_angle = 270;
	//	}

	//	if (keyboard_check(vk_right))
	//	{
	//		sprite_index = spr_player;
	//		image_index = 0;
	//		direction = 0;
	//		image_angle = 360;
	//	}
	//}