/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 1F47F146
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "i < num_bullets"
for(var i = 0; i < num_bullets; i += 1) {
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 582245B7
	/// @DnDParent : 1F47F146
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "bullet"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_bullet"
	/// @DnDSaveInfo : "objectid" "obj_bullet"
	var bullet = instance_create_layer(x + 0, y + 0, "Instances", obj_bullet);

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 0FB74F61
	/// @DnDApplyTo : bullet
	/// @DnDParent : 1F47F146
	with(bullet) {
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 75AC206F
		/// @DnDParent : 0FB74F61
		/// @DnDArgument : "spriteind" "spr_bullet"
		/// @DnDSaveInfo : "spriteind" "spr_bullet"
		sprite_index = spr_bullet;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
		/// @DnDVersion : 1
		/// @DnDHash : 635ABEA4
		/// @DnDParent : 0FB74F61
		/// @DnDArgument : "direction" "i * (360 / other.num_bullets)"
		direction = i * (360 / other.num_bullets);
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 4B83CBC7
		/// @DnDParent : 0FB74F61
		/// @DnDArgument : "angle" "i * (360 / other.num_bullets)"
		image_angle = i * (360 / other.num_bullets);
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 69B650A2
		/// @DnDParent : 0FB74F61
		/// @DnDArgument : "speed" "other.bullet_speed"
		speed = other.bullet_speed;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7AD9038C
		/// @DnDInput : 2
		/// @DnDParent : 0FB74F61
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "expr_1" "true"
		/// @DnDArgument : "var" "from_player"
		/// @DnDArgument : "var_1" "from_turret"
		from_player = false;
		from_turret = true;
	}
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 3FDF1C11
/// @DnDArgument : "steps" "shoot_interval"
alarm_set(0, shoot_interval);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 040D10F6
/// @DnDArgument : "soundid" "snd_enemy_shoot"
/// @DnDSaveInfo : "soundid" "snd_enemy_shoot"
audio_play_sound(snd_enemy_shoot, 0, 0);