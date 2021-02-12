/// @description Move camera
// Get current camrea position
var camX = camera_get_view_x(camera);
var camY = camera_get_view_y(camera);

if mouse_check_button(mb_middle) || keyboard_check(vk_lcontrol) {
	var move_x = device_mouse_x_to_gui(0) - mouse_x_previous;
	var move_y = device_mouse_y_to_gui(0) - mouse_y_previous;
	
	camX -= move_x;
	camY -= move_y;
}

// Apply camera position
camera_set_view_pos(camera, camX, camY);

// Store previous
mouse_x_previous = device_mouse_x_to_gui(0);
mouse_y_previous = device_mouse_y_to_gui(0);
