/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 55C55C08
event_inherited();

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 43975B1B
var l43975B1B_0 = false;
l43975B1B_0 = instance_exists(noone);
if(l43975B1B_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4F1C9B18
	/// @DnDApplyTo : {obj_controls}
	/// @DnDParent : 43975B1B
	with(obj_controls) instance_destroy();
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3C7D44D8
else
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5BDA05EE
	/// @DnDParent : 3C7D44D8
	/// @DnDArgument : "xpos" "room_width/ 2"
	/// @DnDArgument : "ypos" "room_height-100"
	/// @DnDArgument : "objectid" "obj_controls"
	/// @DnDSaveInfo : "objectid" "obj_controls"
	instance_create_layer(room_width/ 2, room_height-100, "Instances", obj_controls);
}