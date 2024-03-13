/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 6288B9FB
/// @DnDArgument : "key" "vk_up"
var l6288B9FB_0;
l6288B9FB_0 = keyboard_check(vk_up);
if (l6288B9FB_0)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 59C5AFC6
	/// @DnDParent : 6288B9FB
	/// @DnDArgument : "soundid" "snd_shoot"
	/// @DnDArgument : "gain" "0.5"
	/// @DnDArgument : "pitch" "random_range(0.2,0.7)"
	/// @DnDSaveInfo : "soundid" "snd_shoot"
	audio_play_sound(snd_shoot, 0, 0, 0.5, undefined, random_range(0.2,0.7));

	/// @DnDAction : YoYo Games.Movement.Add_Motion
	/// @DnDVersion : 1
	/// @DnDHash : 75177C76
	/// @DnDParent : 6288B9FB
	/// @DnDArgument : "dir" "image_angle"
	/// @DnDArgument : "speed" "0.1"
	motion_add(image_angle, 0.1);
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 0AEB1C7F
/// @DnDArgument : "key" "vk_left"
var l0AEB1C7F_0;
l0AEB1C7F_0 = keyboard_check(vk_left);
if (l0AEB1C7F_0)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 2DC9EDB2
	/// @DnDParent : 0AEB1C7F
	/// @DnDArgument : "soundid" "snd_move"
	/// @DnDArgument : "gain" "0.5"
	/// @DnDArgument : "pitch" "random_range(0.2,0.7)"
	/// @DnDSaveInfo : "soundid" "snd_move"
	audio_play_sound(snd_move, 0, 0, 0.5, undefined, random_range(0.2,0.7));

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0F97756C
	/// @DnDParent : 0AEB1C7F
	/// @DnDArgument : "expr" "4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "image_angle"
	image_angle += 4;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 168CC15E
/// @DnDArgument : "key" "vk_right"
var l168CC15E_0;
l168CC15E_0 = keyboard_check(vk_right);
if (l168CC15E_0)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 64B7E625
	/// @DnDParent : 168CC15E
	/// @DnDArgument : "soundid" "snd_move"
	/// @DnDArgument : "gain" ".5"
	/// @DnDArgument : "pitch" "random_range(0.2,0.7)"
	/// @DnDSaveInfo : "soundid" "snd_move"
	audio_play_sound(snd_move, 0, 0, .5, undefined, random_range(0.2,0.7));

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 14E0B519
	/// @DnDParent : 168CC15E
	/// @DnDArgument : "expr" "-4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "image_angle"
	image_angle += -4;
}

/// @DnDAction : YoYo Games.Movement.Wrap_Room
/// @DnDVersion : 1
/// @DnDHash : 2D545E12
move_wrap(1, 1, 0);

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 0D4FD3C9
var l0D4FD3C9_0;
l0D4FD3C9_0 = mouse_check_button_pressed(mb_left);
if (l0D4FD3C9_0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1AC99F2E
	/// @DnDParent : 0D4FD3C9
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_bullet"
	/// @DnDSaveInfo : "objectid" "obj_bullet"
	instance_create_layer(x + 0, y + 0, "Instances", obj_bullet);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 6A419502
	/// @DnDParent : 0D4FD3C9
	/// @DnDArgument : "soundid" "snd_move"
	/// @DnDArgument : "pitch" "random_range(0.8,1.2)"
	/// @DnDSaveInfo : "soundid" "snd_move"
	audio_play_sound(snd_move, 0, 0, 1.0, undefined, random_range(0.8,1.2));

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6CC702D5
	/// @DnDParent : 0D4FD3C9
	/// @DnDArgument : "var" "powerup"
	/// @DnDArgument : "value" "1"
	if(powerup == 1)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 50FAE8D3
		/// @DnDParent : 6CC702D5
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "bullet"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "obj_bullet"
		/// @DnDSaveInfo : "objectid" "obj_bullet"
		var bullet = instance_create_layer(x + 0, y + 0, "Instances", obj_bullet);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 748FCF85
		/// @DnDParent : 6CC702D5
		/// @DnDArgument : "expr" "10"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "bullet.direction"
		bullet.direction += 10;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1D1357D8
		/// @DnDParent : 6CC702D5
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "bullet"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "obj_bullet"
		/// @DnDSaveInfo : "objectid" "obj_bullet"
		var bullet = instance_create_layer(x + 0, y + 0, "Instances", obj_bullet);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 45EDAC36
		/// @DnDParent : 6CC702D5
		/// @DnDArgument : "expr" "-10"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "bullet.direction"
		bullet.direction += -10;
	}
}