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
/// @DnDHash : 07EEEECC
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
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 2128D0C8
	/// @DnDParent : 1B5F5229
	/// @DnDArgument : "code" "// I swear this used to be easier...$(13_10)// Calculate where we want to move to$(13_10)var target_x = x + dcos(direction) * move_speed;$(13_10)var target_y = y + -dsin(direction) * move_speed;$(13_10)$(13_10)// Move there if possible$(13_10)if(place_free(target_x, target_y)){$(13_10)	x = target_x;$(13_10)	y = target_y;$(13_10)}$(13_10)$(13_10)// Otherwise move as close as possible along both axes$(13_10)else {$(13_10)	var x_distance = abs(target_x - x);$(13_10)	var y_distance = abs(target_y - y);$(13_10)$(13_10)	repeat(x_distance) {$(13_10)		if(place_free(x + sign(target_x - x), y)) {$(13_10)			x += sign(target_x - x);$(13_10)		}$(13_10)		else {$(13_10)			break;$(13_10)		}$(13_10)	}$(13_10)	repeat(y_distance) {$(13_10)		if(place_free(x, y + sign(target_y - y))) {$(13_10)			y += sign(target_y - y);$(13_10)		}$(13_10)		else {$(13_10)			break;$(13_10)		}$(13_10)	}$(13_10)}$(13_10)"
	// I swear this used to be easier...
	// Calculate where we want to move to
	var target_x = x + dcos(direction) * move_speed;
	var target_y = y + -dsin(direction) * move_speed;
	
	// Move there if possible
	if(place_free(target_x, target_y)){
		x = target_x;
		y = target_y;
	}
	
	// Otherwise move as close as possible along both axes
	else {
		var x_distance = abs(target_x - x);
		var y_distance = abs(target_y - y);
	
		repeat(x_distance) {
			if(place_free(x + sign(target_x - x), y)) {
				x += sign(target_x - x);
			}
			else {
				break;
			}
		}
		repeat(y_distance) {
			if(place_free(x, y + sign(target_y - y))) {
				y += sign(target_y - y);
			}
			else {
				break;
			}
		}
	}
}