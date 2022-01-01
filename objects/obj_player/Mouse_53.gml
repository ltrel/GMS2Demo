/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 015FB1CC
/// @DnDArgument : "xpos" "dcos(image_angle) * 20"
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos" "-dsin(image_angle) * 20"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "bullet"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "objectid" "obj_bullet"
/// @DnDSaveInfo : "objectid" "obj_bullet"
var bullet = instance_create_layer(x + dcos(image_angle) * 20, y + -dsin(image_angle) * 20, "Instances", obj_bullet);

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 2DD55FE6
/// @DnDApplyTo : bullet
with(bullet) {
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
	/// @DnDVersion : 1
	/// @DnDHash : 75EA8B9C
	/// @DnDParent : 2DD55FE6
	/// @DnDArgument : "direction" "other.image_angle"
	direction = other.image_angle;

	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 0E5B6BCD
	/// @DnDParent : 2DD55FE6
	/// @DnDArgument : "angle" "other.image_angle"
	image_angle = other.image_angle;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 3CF9F135
	/// @DnDParent : 2DD55FE6
	/// @DnDArgument : "speed" "other.bullet_speed"
	speed = other.bullet_speed;
}