/// @description 
if mouse_check_button_pressed(mb_left) {
	if !draw
		draw = !draw;
	mx1 = mouse_x;
	my1 = mouse_y;
}

if mouse_check_button(mb_left) {
	mx2 = mouse_x;
	my2 = mouse_y;
}

if mouse_check_button_pressed(mb_right)
	draw = false;

if keyboard_check_pressed(ord("S"))
	selection_coords = !selection_coords;
