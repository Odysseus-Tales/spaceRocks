/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 01B00B1A
/// @DnDArgument : "soundid" "snd_powerUp"
/// @DnDArgument : "pitch" "random_range(0.8,1.2)"
/// @DnDSaveInfo : "soundid" "snd_powerUp"
audio_play_sound(snd_powerUp, 0, 0, 1.0, undefined, random_range(0.8,1.2));

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 650F4793
/// @DnDArgument : "expr" "2"
/// @DnDArgument : "var" "powerup"
powerup = 2;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 6130C15B
/// @DnDArgument : "steps" "10*60"
alarm_set(0, 10*60);

/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 4619061B
/// @DnDArgument : "colour" "$5EFFFFFF"
image_blend = $5EFFFFFF & $ffffff;
image_alpha = ($5EFFFFFF >> 24) / $ff;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 10B40B7D
/// @DnDApplyTo : other
with(other) instance_destroy();