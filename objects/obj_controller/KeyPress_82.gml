/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4C2A9AAE
/// @DnDArgument : "expr" "!global.player_alive"
if(!global.player_alive)
{
	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 4A90E13B
	/// @DnDParent : 4C2A9AAE
	room_restart();
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0EC1D519
/// @DnDArgument : "expr" "global.game_won"
if(global.game_won)
{
	/// @DnDAction : YoYo Games.Game.Restart_Game
	/// @DnDVersion : 1
	/// @DnDHash : 4A4CFB6A
	/// @DnDParent : 0EC1D519
	game_restart();
}