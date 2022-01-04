/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 67D846E8
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 1B20211D
/// @DnDArgument : "color" "$FFCC5551"
draw_set_colour($FFCC5551 & $ffffff);
var l1B20211D_0=($FFCC5551 >> 24);
draw_set_alpha(l1B20211D_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 78856F65
/// @DnDArgument : "font" "fnt_xkcd_large"
/// @DnDSaveInfo : "font" "fnt_xkcd_large"
draw_set_font(fnt_xkcd_large);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 3382467A
/// @DnDArgument : "x" "room_width / 2"
/// @DnDArgument : "y" "room_height / 2 - 250"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" ""Lia GameMaker Demo""
draw_text(room_width / 2, room_height / 2 - 250,  + string("Lia GameMaker Demo"));

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 1F855B4D
/// @DnDArgument : "font" "fnt_xkcd_small"
/// @DnDSaveInfo : "font" "fnt_xkcd_small"
draw_set_font(fnt_xkcd_small);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 46189281
/// @DnDArgument : "halign" "fa_center"
draw_set_halign(fa_center);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 33870D8B
/// @DnDArgument : "x" "room_width / 2"
/// @DnDArgument : "y" "room_height / 2 - 150"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" ""WASD to move\n\nLeft click to shoot\n\nRight click to dash\n\nF12 to enable godmode for testing\n\nPress space to start""
draw_text(room_width / 2, room_height / 2 - 150,  + string("WASD to move\n\nLeft click to shoot\n\nRight click to dash\n\nF12 to enable godmode for testing\n\nPress space to start"));