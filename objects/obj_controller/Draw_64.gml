/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 427D031F
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 22C6E7F8
/// @DnDArgument : "font" "fnt_xkcd_large"
/// @DnDSaveInfo : "font" "fnt_xkcd_large"
draw_set_font(fnt_xkcd_large);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2F3B7FC1
/// @DnDArgument : "expr" "global.player_alive"
/// @DnDArgument : "not" "1"
if(!(global.player_alive))
{
	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 75568E20
	/// @DnDParent : 2F3B7FC1
	/// @DnDArgument : "color" "$FF0000E5"
	/// @DnDArgument : "alpha" "false"
	draw_set_colour($FF0000E5 & $ffffff);draw_set_alpha(1);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 4D787AAD
	/// @DnDParent : 2F3B7FC1
	/// @DnDArgument : "x" "1920 / 2"
	/// @DnDArgument : "y" "1080 / 2"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "var" ""Game over\nPress R to restart""
	draw_text(1920 / 2, 1080 / 2,  + string("Game over\nPress R to restart"));
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5BA90BC7
/// @DnDArgument : "expr" "global.game_won"
if(global.game_won)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 49BDAD2C
	/// @DnDParent : 5BA90BC7
	/// @DnDArgument : "color" "$FF0BE500"
	/// @DnDArgument : "alpha" "false"
	draw_set_colour($FF0BE500 & $ffffff);draw_set_alpha(1);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 6AF1737C
	/// @DnDParent : 5BA90BC7
	/// @DnDArgument : "x" "1920 / 2"
	/// @DnDArgument : "y" "1080 / 2"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "var" ""You win\nPress R to return to the main menu""
	draw_text(1920 / 2, 1080 / 2,  + string("You win\nPress R to return to the main menu"));
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5AE01051
/// @DnDArgument : "expr" "global.is_invincible"
if(global.is_invincible)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 550A1F0D
	/// @DnDParent : 5AE01051
	/// @DnDArgument : "valign" "fa_bottom"
	draw_set_halign(fa_left);
	draw_set_valign(fa_bottom);

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 4AF586CC
	/// @DnDParent : 5AE01051
	/// @DnDArgument : "font" "fnt_xkcd_small"
	/// @DnDSaveInfo : "font" "fnt_xkcd_small"
	draw_set_font(fnt_xkcd_small);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 4E7866BC
	/// @DnDParent : 5AE01051
	/// @DnDArgument : "color" "$FF0000E5"
	/// @DnDArgument : "alpha" "false"
	draw_set_colour($FF0000E5 & $ffffff);draw_set_alpha(1);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 2869A55E
	/// @DnDParent : 5AE01051
	/// @DnDArgument : "x" "20"
	/// @DnDArgument : "y" "1080 - 20"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "var" ""Godmode Enabled""
	draw_text(20, 1080 - 20,  + string("Godmode Enabled"));
}