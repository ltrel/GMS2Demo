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
	/// @DnDArgument : "color" "$FF0000E5"
	/// @DnDArgument : "alpha" "false"
	draw_set_colour($FF0000E5 & $ffffff);draw_set_alpha(1);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 6AF1737C
	/// @DnDParent : 5BA90BC7
	/// @DnDArgument : "x" "1920 / 2"
	/// @DnDArgument : "y" "1080 / 2"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "var" ""You win\nPress R to restart""
	draw_text(1920 / 2, 1080 / 2,  + string("You win\nPress R to restart"));
}