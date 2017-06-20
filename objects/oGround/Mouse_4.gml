/// @description Insert description here
// You can write your code in this editor


// Check for oGround on all 4 sides of object we clicked on.
inst[0] = instance_place(x + BS, y, oGround); // Check right
inst[1] = instance_place(x - BS, y, oGround); // Check Left
inst[2] = instance_place(x, y - BS, oGround); // Check Up
inst[3] = instance_place(x, y + BS, oGround); // Check Down

for (i = 0; i < 4; i++) {
	if (inst[i] != noone) {
		with (inst[i]) {
			alarm[0] = 2; // give some time for the instance to be destroyed before calling scr_AutoTile
		}
	}
}

instance_destroy();