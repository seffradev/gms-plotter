/// @description Move the grid if mouse interacts

/*
if mouse_wheel_up() {
	new_grid_xscale *= 2;
	new_grid_yscale *= 2;
	pixel_scale /= 2;
} else if mouse_wheel_down() {
	new_grid_xscale /= 2;
	new_grid_yscale /= 2;
	pixel_scale *= 2;
}
*/

if abs(grid_xscale - new_grid_xscale) < 0.02 {
	if abs(grid_xscale - new_grid_xscale) < 0.001
		grid_xscale = new_grid_xscale;
	else
		grid_xscale = lerp(grid_xscale, new_grid_xscale, 0.01);
} else
	grid_xscale = lerp(grid_xscale, new_grid_xscale, 0.05);

if abs(grid_yscale - new_grid_yscale) < 0.02 {
	if abs(grid_yscale - new_grid_yscale) < 0.001
		grid_yscale = new_grid_yscale;
	else
		grid_yscale = lerp(grid_yscale, new_grid_yscale, 0.01);
} else
	grid_yscale = lerp(grid_yscale, new_grid_yscale, 0.05);

if keyboard_check_pressed(vk_right)
	if new_grid_xscale < 1
		new_grid_xscale *= 2;
	else
		new_grid_xscale += 1;
if keyboard_check_pressed(vk_left)
	if new_grid_xscale > 1
		new_grid_xscale -= 1;
	else
		new_grid_xscale /= 2;
	
if keyboard_check_pressed(vk_up)
	if new_grid_yscale < 1
		new_grid_yscale *= 2;
	else
		new_grid_yscale += 1;
if keyboard_check_pressed(vk_down)
	if new_grid_yscale > 1
		new_grid_yscale -= 1;
	else
		new_grid_yscale /= 2;

if keyboard_check_pressed(ord("D"))
	division_grids = !division_grids;

if keyboard_check_pressed(ord("L"))
	labels = !labels;

if keyboard_check_pressed(ord("A"))
	axes = !axes;

if keyboard_check_pressed(ord("P"))
	polar = !polar;

if keyboard_check_pressed(ord("B"))
	bounding_box = !bounding_box;

if keyboard_check_pressed(ord("X"))
	x_axis = !x_axis;

if keyboard_check_pressed(ord("Y"))
	y_axis = !y_axis;

if keyboard_check_pressed(ord("Q"))
	axis_labels = !axis_labels;

if keyboard_check_pressed(ord("M"))
	mouse_coords = !mouse_coords;

if keyboard_check_pressed(ord("G"))
	plots = !plots;
