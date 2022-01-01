/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 51B05E81
/// @DnDArgument : "expr" "can_shoot"
if(can_shoot)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3A9603A7
	/// @DnDParent : 51B05E81
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "can_shoot"
	can_shoot = false;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 4CD69AB4
	/// @DnDParent : 51B05E81
	/// @DnDArgument : "steps" "0.2*60"
	alarm_set(0, 0.2*60);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 590C9414
	/// @DnDParent : 51B05E81
	/// @DnDArgument : "soundid" "snd_shoot"
	/// @DnDSaveInfo : "soundid" "snd_shoot"
	audio_play_sound(snd_shoot, 0, 0);

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 6A18748A
	/// @DnDParent : 51B05E81
	/// @DnDArgument : "x" "mouse_x"
	/// @DnDArgument : "y" "mouse_y"
	direction = point_direction(x, y, mouse_x, mouse_y);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 015FB1CC
	/// @DnDParent : 51B05E81
	/// @DnDArgument : "xpos" "dcos(direction) * 20"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "-dsin(direction) * 20"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "bullet"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_bullet"
	/// @DnDSaveInfo : "objectid" "obj_bullet"
	var bullet = instance_create_layer(x + dcos(direction) * 20, y + -dsin(direction) * 20, "Instances", obj_bullet);

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 2DD55FE6
	/// @DnDApplyTo : bullet
	/// @DnDParent : 51B05E81
	with(bullet) {
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
		/// @DnDVersion : 1
		/// @DnDHash : 75EA8B9C
		/// @DnDParent : 2DD55FE6
		/// @DnDArgument : "direction" "other.direction"
		direction = other.direction;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 0E5B6BCD
		/// @DnDParent : 2DD55FE6
		/// @DnDArgument : "angle" "other.direction"
		image_angle = other.direction;
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 3CF9F135
		/// @DnDParent : 2DD55FE6
		/// @DnDArgument : "speed" "other.bullet_speed"
		speed = other.bullet_speed;
	}
}