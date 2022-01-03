/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 59DBF7B8
/// @DnDArgument : "expr" "other.from_player"
/// @DnDArgument : "not" "1"
if(!(other.from_player))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 49133E8E
	/// @DnDParent : 59DBF7B8
	instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7BB2FF01
	/// @DnDApplyTo : other
	/// @DnDParent : 59DBF7B8
	with(other) instance_destroy();

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 0386E896
	/// @DnDParent : 59DBF7B8
	/// @DnDArgument : "value" "false"
	/// @DnDArgument : "var" "player_alive"
	global.player_alive = false;
}