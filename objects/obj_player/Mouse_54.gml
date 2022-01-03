/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 00BAF034
/// @DnDArgument : "expr" "can_dash && is_moving"
if(can_dash && is_moving)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 1FCB6015
	/// @DnDParent : 00BAF034
	/// @DnDArgument : "alpha" "0.5"
	image_alpha = 0.5;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 3B2938B3
	/// @DnDParent : 00BAF034
	/// @DnDArgument : "soundid" "snd_dash"
	/// @DnDSaveInfo : "soundid" "snd_dash"
	audio_play_sound(snd_dash, 0, 0);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 401F2AC7
	/// @DnDInput : 3
	/// @DnDParent : 00BAF034
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "expr_1" "direction"
	/// @DnDArgument : "expr_2" "false"
	/// @DnDArgument : "var" "is_dashing"
	/// @DnDArgument : "var_1" "dash_direction"
	/// @DnDArgument : "var_2" "can_dash"
	is_dashing = true;
	dash_direction = direction;
	can_dash = false;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 29B8C75C
	/// @DnDParent : 00BAF034
	/// @DnDArgument : "steps" "dash_steps"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, dash_steps);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 39D6951E
	/// @DnDParent : 00BAF034
	/// @DnDArgument : "steps" "dash_timeout_steps"
	/// @DnDArgument : "alarm" "2"
	alarm_set(2, dash_timeout_steps);
}