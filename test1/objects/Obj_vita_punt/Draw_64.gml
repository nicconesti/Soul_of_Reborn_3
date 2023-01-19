/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 4D753B5D
/// @DnDArgument : "y" "20"
/// @DnDArgument : "caption" ""HP PROTAGONISTA:  ""
/// @DnDArgument : "var" "global.vite"
draw_text(0, 20, string("HP PROTAGONISTA:  ") + string(global.vite));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 24874E13
/// @DnDArgument : "y" "70"
/// @DnDArgument : "caption" ""MONETE RACCOLTE:  ""
/// @DnDArgument : "var" "global.monete"
draw_text(0, 70, string("MONETE RACCOLTE:  ") + string(global.monete));

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 500CA258
/// @DnDArgument : "ypos" "40"
/// @DnDArgument : "objectid" "oHealthbar"
/// @DnDArgument : "layer" ""Assortita""
/// @DnDSaveInfo : "objectid" "oHealthbar"
instance_create_layer(0, 40, "Assortita", oHealthbar);