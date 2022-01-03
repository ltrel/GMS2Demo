/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 51E80C86
/// @DnDArgument : "expr" "other.is_open"
/// @DnDArgument : "not" "1"
if(!(other.is_open))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1E3F3FFA
	/// @DnDParent : 51E80C86
	instance_destroy();
}