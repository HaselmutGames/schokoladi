
	if (keyboard_check(vk_up || vk_down || vk_left || vk_right))
	{
		speed = 4;
		if (keyboard_check(vk_up &&  !place_meeting(x, y - speed, obj_game)))
		{
			sprite_index = spr_player;
			image_index = 0;
			direction = 90;
			image_angle = 90;
			y -= speed;
		}

		if (keyboard_check(vk_left))
		{
			sprite_index = spr_player_left;
			image_index = 0;
			direction = 180;
			image_angle = 0;
		}

		if (keyboard_check(vk_down))
		{
			sprite_index = spr_player;
			image_index = 0;
			direction = 270;
			image_angle = 270;
		}

		if (keyboard_check(vk_right))
		{
			sprite_index = spr_player;
			image_index = 0;
			direction = 0;
			image_angle = 360;
		}
	}