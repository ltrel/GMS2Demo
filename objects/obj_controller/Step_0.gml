/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 6B3ED59A
/// @DnDArgument : "expr" "global.room_won"
if(global.room_won)
{
	/// @DnDAction : YoYo Games.Rooms.If_Last_Room
	/// @DnDVersion : 1
	/// @DnDHash : 1E5D1A99
	/// @DnDParent : 6B3ED59A
	if(room == room_last)
	{
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 788A7C72
		/// @DnDParent : 1E5D1A99
		/// @DnDArgument : "value" "true"
		/// @DnDArgument : "var" "game_won"
		global.game_won = true;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 4343FDBF
	/// @DnDParent : 6B3ED59A
	else
	{
		/// @DnDAction : YoYo Games.Rooms.Next_Room
		/// @DnDVersion : 1
		/// @DnDHash : 322F396E
		/// @DnDParent : 4343FDBF
		room_goto_next();
	}
}