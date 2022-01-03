/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4C2A9AAE
/// @DnDArgument : "expr" "global.player_alive"
/// @DnDArgument : "not" "1"
if(!(global.player_alive))
{
	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 4A90E13B
	/// @DnDParent : 4C2A9AAE
	room_restart();
}