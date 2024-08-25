/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 2F83D140
/// @DnDArgument : "key" "vk_up || vk_down || vk_left || vk_right"
var l2F83D140_0;
l2F83D140_0 = keyboard_check(vk_up || vk_down || vk_left || vk_right);
if (l2F83D140_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 2E59C2B1
	/// @DnDParent : 2F83D140
	/// @DnDArgument : "speed" "4"
	speed = 4;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 4155C58D
	/// @DnDParent : 2F83D140
	/// @DnDArgument : "key" "vk_up"
	var l4155C58D_0;
	l4155C58D_0 = keyboard_check(vk_up);
	if (l4155C58D_0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 694999BE
		/// @DnDParent : 4155C58D
		/// @DnDArgument : "spriteind" "spr_player"
		/// @DnDSaveInfo : "spriteind" "spr_player"
		sprite_index = spr_player;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
		/// @DnDVersion : 1.1
		/// @DnDHash : 68D26FC4
		/// @DnDParent : 4155C58D
		/// @DnDArgument : "direction" "90"
		direction = 90;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 6400356E
		/// @DnDParent : 4155C58D
		/// @DnDArgument : "angle" "90"
		image_angle = 90;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 120628E4
	/// @DnDParent : 2F83D140
	/// @DnDArgument : "key" "vk_left"
	var l120628E4_0;
	l120628E4_0 = keyboard_check(vk_left);
	if (l120628E4_0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 366CB6AA
		/// @DnDParent : 120628E4
		/// @DnDArgument : "spriteind" "spr_player_left"
		/// @DnDSaveInfo : "spriteind" "spr_player_left"
		sprite_index = spr_player_left;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
		/// @DnDVersion : 1.1
		/// @DnDHash : 20BBC6A4
		/// @DnDParent : 120628E4
		/// @DnDArgument : "direction" "180"
		direction = 180;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 6E376D3C
		/// @DnDParent : 120628E4
		image_angle = 0;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 700F41B9
	/// @DnDParent : 2F83D140
	/// @DnDArgument : "key" "vk_down"
	var l700F41B9_0;
	l700F41B9_0 = keyboard_check(vk_down);
	if (l700F41B9_0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 7EE020B5
		/// @DnDParent : 700F41B9
		/// @DnDArgument : "spriteind" "spr_player"
		/// @DnDSaveInfo : "spriteind" "spr_player"
		sprite_index = spr_player;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
		/// @DnDVersion : 1.1
		/// @DnDHash : 42EDB4B5
		/// @DnDParent : 700F41B9
		/// @DnDArgument : "direction" "270"
		direction = 270;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 01464D9A
		/// @DnDParent : 700F41B9
		/// @DnDArgument : "angle" "270"
		image_angle = 270;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 5D178231
	/// @DnDParent : 2F83D140
	/// @DnDArgument : "key" "vk_right"
	var l5D178231_0;
	l5D178231_0 = keyboard_check(vk_right);
	if (l5D178231_0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 50ED7028
		/// @DnDParent : 5D178231
		/// @DnDArgument : "spriteind" "spr_player"
		/// @DnDSaveInfo : "spriteind" "spr_player"
		sprite_index = spr_player;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
		/// @DnDVersion : 1.1
		/// @DnDHash : 112E752A
		/// @DnDParent : 5D178231
		/// @DnDArgument : "direction" "0"
		direction = 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 64546B87
		/// @DnDParent : 5D178231
		/// @DnDArgument : "angle" "360"
		image_angle = 360;
	}
}