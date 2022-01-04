/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 71C3ED66
/// @DnDArgument : "expr" "x < 335"
if(x < 335)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 47EC8613
	/// @DnDParent : 71C3ED66
	/// @DnDArgument : "obj" "obj_enemy"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "obj" "obj_enemy"
	var l47EC8613_0 = false;
	l47EC8613_0 = instance_exists(obj_enemy);
	if(!l47EC8613_0)
	{
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 79B16506
		/// @DnDParent : 47EC8613
		/// @DnDArgument : "value" "true"
		/// @DnDArgument : "var" "game_won"
		global.game_won = true;
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 0B6BA4DD
		/// @DnDParent : 47EC8613
		instance_destroy();
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 6558025E
/// @DnDArgument : "expr" "is_dashing"
if(is_dashing)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 627365E4
	/// @DnDInput : 2
	/// @DnDParent : 6558025E
	/// @DnDArgument : "function" "try_move_direction"
	/// @DnDArgument : "arg" "dash_direction"
	/// @DnDArgument : "arg_1" "dash_speed"
	try_move_direction(dash_direction, dash_speed);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 14888CED
else
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 154820F6
	/// @DnDInput : 2
	/// @DnDParent : 14888CED
	/// @DnDArgument : "var" "h_move"
	/// @DnDArgument : "value" "0"
	/// @DnDArgument : "var_1" "v_move"
	/// @DnDArgument : "value_1" "0"
	var h_move = 0;
	var v_move = 0;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 1C7D3401
	/// @DnDParent : 14888CED
	/// @DnDArgument : "key" "ord("W")"
	var l1C7D3401_0;
	l1C7D3401_0 = keyboard_check(ord("W"));
	if (l1C7D3401_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3A6DBD00
		/// @DnDParent : 1C7D3401
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "v_move"
		v_move += -1;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 0BE25664
	/// @DnDParent : 14888CED
	/// @DnDArgument : "key" "ord("S")"
	var l0BE25664_0;
	l0BE25664_0 = keyboard_check(ord("S"));
	if (l0BE25664_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5D9208B0
		/// @DnDParent : 0BE25664
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "v_move"
		v_move += 1;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 1F10F131
	/// @DnDParent : 14888CED
	/// @DnDArgument : "key" "ord("A")"
	var l1F10F131_0;
	l1F10F131_0 = keyboard_check(ord("A"));
	if (l1F10F131_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3EEAA431
		/// @DnDParent : 1F10F131
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "h_move"
		h_move += -1;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 4B409A69
	/// @DnDParent : 14888CED
	/// @DnDArgument : "key" "ord("D")"
	var l4B409A69_0;
	l4B409A69_0 = keyboard_check(ord("D"));
	if (l4B409A69_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 39855168
		/// @DnDParent : 4B409A69
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "h_move"
		h_move += 1;
	}

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 69D3C93F
	/// @DnDParent : 14888CED
	/// @DnDArgument : "x" "h_move"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "v_move"
	/// @DnDArgument : "y_relative" "1"
	direction = point_direction(x, y, x + h_move, y + v_move);

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 66E4CAD7
	/// @DnDParent : 14888CED
	/// @DnDArgument : "expr" "h_move != 0 || v_move != 0"
	if(h_move != 0 || v_move != 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5083852B
		/// @DnDParent : 66E4CAD7
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "is_moving"
		is_moving = true;
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 46A0C20B
		/// @DnDInput : 2
		/// @DnDParent : 66E4CAD7
		/// @DnDArgument : "function" "try_move_direction"
		/// @DnDArgument : "arg" "direction"
		/// @DnDArgument : "arg_1" "move_speed"
		try_move_direction(direction, move_speed);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 17EAAC80
	/// @DnDParent : 14888CED
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 063E19B1
		/// @DnDParent : 17EAAC80
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "is_moving"
		is_moving = false;
	}
}