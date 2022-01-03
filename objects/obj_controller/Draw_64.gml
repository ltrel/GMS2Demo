/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2F3B7FC1
/// @DnDArgument : "expr" "global.player_alive"
/// @DnDArgument : "not" "1"
if(!(global.player_alive))
{
	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 7CF14396
	/// @DnDParent : 2F3B7FC1
	/// @DnDArgument : "color" "$FF0000BA"
	draw_set_colour($FF0000BA & $ffffff);
	var l7CF14396_0=($FF0000BA >> 24);
	draw_set_alpha(l7CF14396_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 22C6E7F8
	/// @DnDParent : 2F3B7FC1
	/// @DnDArgument : "font" "fnt_xkcd"
	/// @DnDSaveInfo : "font" "fnt_xkcd"
	draw_set_font(fnt_xkcd);

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 427D031F
	/// @DnDParent : 2F3B7FC1
	/// @DnDArgument : "valign" "fa_bottom"
	draw_set_halign(fa_left);
	draw_set_valign(fa_bottom);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 4D787AAD
	/// @DnDParent : 2F3B7FC1
	/// @DnDArgument : "x" "40"
	/// @DnDArgument : "y" "1080 - 40"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "var" ""game over, press R to restart""
	draw_text(40, 1080 - 40,  + string("game over, press R to restart"));
}