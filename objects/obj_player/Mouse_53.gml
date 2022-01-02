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

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 14E902FE
	/// @DnDParent : 51B05E81
	/// @DnDArgument : "expr" "darctan2(-(mouse_y - y), mouse_x - x)"
	/// @DnDArgument : "var" "mouse_direction"
	mouse_direction = darctan2(-(mouse_y - y), mouse_x - x);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 015FB1CC
	/// @DnDParent : 51B05E81
	/// @DnDArgument : "xpos" "dcos(mouse_direction) * 20"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "-dsin(mouse_direction) * 20"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "bullet"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_bullet"
	/// @DnDSaveInfo : "objectid" "obj_bullet"
	var bullet = instance_create_layer(x + dcos(mouse_direction) * 20, y + -dsin(mouse_direction) * 20, "Instances", obj_bullet);

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
		/// @DnDArgument : "direction" "other.mouse_direction"
		direction = other.mouse_direction;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 0E5B6BCD
		/// @DnDParent : 2DD55FE6
		/// @DnDArgument : "angle" "other.mouse_direction"
		image_angle = other.mouse_direction;
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 3CF9F135
		/// @DnDParent : 2DD55FE6
		/// @DnDArgument : "speed" "other.bullet_speed"
		speed = other.bullet_speed;
	}
}