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
	/// @DnDArgument : "speed" "3.5"
	speed = 3.5;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 0F0D939E
	/// @DnDParent : 2F83D140
	/// @DnDArgument : "key" "vk_up"
	var l0F0D939E_0;
	l0F0D939E_0 = keyboard_check(vk_up);
	if (l0F0D939E_0)
	{
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Released
		/// @DnDVersion : 1
		/// @DnDHash : 43E52B1C
		/// @DnDParent : 0F0D939E
		/// @DnDArgument : "key" "vk_left"
		var l43E52B1C_0;
		l43E52B1C_0 = keyboard_check_released(vk_left);
		if (l43E52B1C_0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 3AB499D9
			/// @DnDParent : 43E52B1C
			/// @DnDArgument : "instvar" "16"
			image_yscale = 0;
		
			/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
			/// @DnDVersion : 1.1
			/// @DnDHash : 14C2B350
			/// @DnDParent : 43E52B1C
			/// @DnDArgument : "direction" "90"
			direction = 90;
		
			/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
			/// @DnDVersion : 1
			/// @DnDHash : 60E3F045
			/// @DnDParent : 43E52B1C
			/// @DnDArgument : "angle" "90"
			image_angle = 90;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 230A82DC
		/// @DnDParent : 0F0D939E
		else
		{
			/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
			/// @DnDVersion : 1.1
			/// @DnDHash : 473487E4
			/// @DnDParent : 230A82DC
			/// @DnDArgument : "direction" "90"
			direction = 90;
		
			/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
			/// @DnDVersion : 1
			/// @DnDHash : 1F5A8561
			/// @DnDParent : 230A82DC
			/// @DnDArgument : "angle" "90"
			image_angle = 90;
		}
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
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
		/// @DnDVersion : 1.1
		/// @DnDHash : 20BBC6A4
		/// @DnDParent : 120628E4
		/// @DnDArgument : "direction" "180"
		direction = 180;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 7FC7FD5B
		/// @DnDParent : 120628E4
		/// @DnDArgument : "angle" "180"
		image_angle = 180;
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 4D60E64D
		/// @DnDParent : 120628E4
		/// @DnDArgument : "value" "-1"
		/// @DnDArgument : "instvar" "16"
		image_yscale = -1;
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
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Released
		/// @DnDVersion : 1
		/// @DnDHash : 64076B2C
		/// @DnDParent : 700F41B9
		/// @DnDArgument : "key" "vk_left"
		var l64076B2C_0;
		l64076B2C_0 = keyboard_check_released(vk_left);
		if (l64076B2C_0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 0F963050
			/// @DnDParent : 64076B2C
			/// @DnDArgument : "instvar" "16"
			image_yscale = 0;
		
			/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
			/// @DnDVersion : 1.1
			/// @DnDHash : 660E5148
			/// @DnDParent : 64076B2C
			/// @DnDArgument : "direction" "270"
			direction = 270;
		
			/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
			/// @DnDVersion : 1
			/// @DnDHash : 4FC890DC
			/// @DnDParent : 64076B2C
			/// @DnDArgument : "angle" "270"
			image_angle = 270;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 2D162045
		/// @DnDParent : 700F41B9
		else
		{
			/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
			/// @DnDVersion : 1.1
			/// @DnDHash : 42EDB4B5
			/// @DnDParent : 2D162045
			/// @DnDArgument : "direction" "270"
			direction = 270;
		
			/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
			/// @DnDVersion : 1
			/// @DnDHash : 01464D9A
			/// @DnDParent : 2D162045
			/// @DnDArgument : "angle" "270"
			image_angle = 270;
		}
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 17669C82
	/// @DnDParent : 2F83D140
	/// @DnDArgument : "key" "vk_right"
	var l17669C82_0;
	l17669C82_0 = keyboard_check(vk_right);
	if (l17669C82_0)
	{
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Released
		/// @DnDVersion : 1
		/// @DnDHash : 22F90ECB
		/// @DnDParent : 17669C82
		/// @DnDArgument : "key" "vk_left"
		var l22F90ECB_0;
		l22F90ECB_0 = keyboard_check_released(vk_left);
		if (l22F90ECB_0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 2A5EF5AC
			/// @DnDParent : 22F90ECB
			/// @DnDArgument : "instvar" "16"
			image_yscale = 0;
		
			/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
			/// @DnDVersion : 1.1
			/// @DnDHash : 41D02C54
			/// @DnDParent : 22F90ECB
			/// @DnDArgument : "direction" "0"
			direction = 0;
		
			/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
			/// @DnDVersion : 1
			/// @DnDHash : 3F3E4A1A
			/// @DnDParent : 22F90ECB
			/// @DnDArgument : "angle" "360"
			image_angle = 360;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 55A10BF3
		/// @DnDParent : 17669C82
		else
		{
			/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
			/// @DnDVersion : 1.1
			/// @DnDHash : 5466426F
			/// @DnDParent : 55A10BF3
			/// @DnDArgument : "direction" "0"
			direction = 0;
		
			/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
			/// @DnDVersion : 1
			/// @DnDHash : 3E1A480A
			/// @DnDParent : 55A10BF3
			/// @DnDArgument : "angle" "360"
			image_angle = 360;
		}
	}
}