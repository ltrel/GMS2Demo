/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 18EF119D
/// @DnDArgument : "function" "enemy_movement"
enemy_movement();

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0ADAB37D
/// @DnDArgument : "expr" "can_shoot && player_visible()"
if(can_shoot && player_visible())
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5BB190BE
	/// @DnDParent : 0ADAB37D
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "can_shoot"
	can_shoot = false;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 2187919B
	/// @DnDParent : 0ADAB37D
	/// @DnDArgument : "steps" "shoot_timeout_steps"
	alarm_set(0, shoot_timeout_steps);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 0ACD53F5
	/// @DnDParent : 0ADAB37D
	/// @DnDArgument : "soundid" "snd_enemy_shoot"
	/// @DnDSaveInfo : "soundid" "snd_enemy_shoot"
	audio_play_sound(snd_enemy_shoot, 0, 0);

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 0158A4B8
	/// @DnDParent : 0ADAB37D
	/// @DnDArgument : "x" "player.x"
	/// @DnDArgument : "y" "player.y"
	direction = point_direction(x, y, player.x, player.y);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 12D06F2F
	/// @DnDParent : 0ADAB37D
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
	/// @DnDHash : 33CB8D44
	/// @DnDApplyTo : bullet
	/// @DnDParent : 0ADAB37D
	with(bullet) {
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 0D50DC3B
		/// @DnDParent : 33CB8D44
		/// @DnDArgument : "spriteind" "spr_bullet"
		/// @DnDSaveInfo : "spriteind" "spr_bullet"
		sprite_index = spr_bullet;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
		/// @DnDVersion : 1
		/// @DnDHash : 4121CF51
		/// @DnDParent : 33CB8D44
		/// @DnDArgument : "direction" "other.direction"
		direction = other.direction;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 7DBE0DEA
		/// @DnDParent : 33CB8D44
		/// @DnDArgument : "angle" "other.direction"
		image_angle = other.direction;
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 505F4FDF
		/// @DnDParent : 33CB8D44
		/// @DnDArgument : "speed" "other.bullet_speed"
		speed = other.bullet_speed;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5101AF6C
		/// @DnDParent : 33CB8D44
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "from_player"
		from_player = false;
	}
}