/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4FF0B250
/// @DnDArgument : "expr" "other.from_turret"
/// @DnDArgument : "not" "1"
if(!(other.from_turret))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3D702231
	/// @DnDApplyTo : other
	/// @DnDParent : 4FF0B250
	with(other) instance_destroy();
}