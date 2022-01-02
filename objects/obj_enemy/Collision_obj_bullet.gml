/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1D7EAF1B
/// @DnDArgument : "expr" "other.from_player"
if(other.from_player)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 464D1A66
	/// @DnDParent : 1D7EAF1B
	instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 21CF822E
	/// @DnDApplyTo : other
	/// @DnDParent : 1D7EAF1B
	with(other) instance_destroy();
}