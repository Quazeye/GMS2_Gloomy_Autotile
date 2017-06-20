BS = sprite_width; // Base Size
image_speed = 0;

WR = position_meeting(x + BS, y, oGround); // Wall Right?
WL = position_meeting(x - BS, y, oGround); // Wall Left?
WU = position_meeting(x, y - BS, oGround); // Wall Up?
WD = position_meeting(x, y + BS, oGround); // Wall Down?

if (!WL && !WU && WD && WR) {
	image_index = 0;
} else if (WR && WL && !WU && WD) {
	image_index = 1;
} else if (WL && WD && !WR && !WU) {
	image_index = 2;
} else if (!WR && WL && WU && WD) {
	image_index = 3;
} else if (WU && WL && !WR && !WD) {
	image_index = 4;
} else if (WL && WR && WU && !WD) {
	image_index = 5;
} else if (!WL && !WD && WU && WR) {
	image_index = 6;
} else if (!WL && WU && WD && WR) {
	image_index = 7;
} else if (WL && WR && WD && WU) {
	image_index = 8;
}
