/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 2F83D140
/// @DnDArgument : "key" "vk_up"
var l2F83D140_0;
l2F83D140_0 = keyboard_check(vk_up);
if (l2F83D140_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 34204CE7
	/// @DnDParent : 2F83D140
	/// @DnDArgument : "direction" "90"
	direction = 90;

	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 51D5CD6E
	/// @DnDParent : 2F83D140
	/// @DnDArgument : "angle" "90"
	image_angle = 90;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 2E59C2B1
	/// @DnDParent : 2F83D140
	/// @DnDArgument : "speed" "3.5"
	speed = 3.5;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 120628E4
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
	/// @DnDHash : 48A95EC8
	/// @DnDParent : 120628E4
	/// @DnDArgument : "angle" "180"
	image_angle = 180;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 17669C82
/// @DnDArgument : "key" "vk_right"
var l17669C82_0;
l17669C82_0 = keyboard_check(vk_right);
if (l17669C82_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 5A109E58
	/// @DnDParent : 17669C82
	/// @DnDArgument : "direction" "0"
	direction = 0;

	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 2A81836E
	/// @DnDParent : 17669C82
	/// @DnDArgument : "angle" "360"
	image_angle = 360;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 700F41B9
/// @DnDArgument : "key" "vk_down"
var l700F41B9_0;
l700F41B9_0 = keyboard_check(vk_down);
if (l700F41B9_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 24901E4A
	/// @DnDParent : 700F41B9
	/// @DnDArgument : "direction" "270"
	direction = 270;

	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 0BE9D536
	/// @DnDParent : 700F41B9
	/// @DnDArgument : "angle" "270"
	image_angle = 270;
}