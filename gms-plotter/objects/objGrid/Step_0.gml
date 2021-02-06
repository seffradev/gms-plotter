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

grid_xscale = lerp(grid_xscale, new_grid_xscale, 0.05);
grid_yscale = lerp(grid_yscale, new_grid_yscale, 0.05);

if abs(grid_xscale - new_grid_xscale) < 0.02
	grid_xscale = new_grid_xscale;
if abs(grid_yscale - new_grid_yscale) < 0.02
	grid_yscale = new_grid_yscale;

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
