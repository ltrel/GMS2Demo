/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 18485DEF
/// @DnDArgument : "angle" "point_direction(x, y, mouse_x, mouse_y)"
image_angle = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 154820F6
/// @DnDInput : 2
/// @DnDArgument : "var" "h_move"
/// @DnDArgument : "value" "0"
/// @DnDArgument : "var_1" "v_move"
/// @DnDArgument : "value_1" "0"
var h_move = 0;
var v_move = 0;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 43F1BB14
/// @DnDArgument : "key" "ord("W")"
var l43F1BB14_0;
l43F1BB14_0 = keyboard_check(ord("W"));
if (l43F1BB14_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5DB805D8
	/// @DnDParent : 43F1BB14
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "v_move"
	v_move += -1;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 6F2BB720
/// @DnDArgument : "key" "ord("S")"
var l6F2BB720_0;
l6F2BB720_0 = keyboard_check(ord("S"));
if (l6F2BB720_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6111078C
	/// @DnDParent : 6F2BB720
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "v_move"
	v_move += 1;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 0182540E
/// @DnDArgument : "key" "ord("A")"
var l0182540E_0;
l0182540E_0 = keyboard_check(ord("A"));
if (l0182540E_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 467B7B24
	/// @DnDParent : 0182540E
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "h_move"
	h_move += -1;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 26A7A423
/// @DnDArgument : "key" "ord("D")"
var l26A7A423_0;
l26A7A423_0 = keyboard_check(ord("D"));
if (l26A7A423_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 69568B1F
	/// @DnDParent : 26A7A423
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "h_move"
	h_move += 1;
}

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 0A3CB294
/// @DnDArgument : "x" "h_move"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "v_move"
/// @DnDArgument : "y_relative" "1"
direction = point_direction(x, y, x + h_move, y + v_move);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1B5F5229
/// @DnDArgument : "expr" "h_move != 0 || v_move != 0"
if(h_move != 0 || v_move != 0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 4D34253A
	/// @DnDParent : 1B5F5229
	/// @DnDArgument : "speed" "move_speed"
	speed = move_speed;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 78A5C588
else
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 4EEA103B
	/// @DnDParent : 78A5C588
	speed = 0;
}