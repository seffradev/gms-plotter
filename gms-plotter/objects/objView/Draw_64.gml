/// @description Draw mouse-coordinates
if !instance_exists(objGrid) || !objGrid.mouse_coords
	exit;
	
var mouse_coords = reverse_map2d(mouse_x, mouse_y);
var font_size = font_get_size(draw_get_font());

draw_set_halign(fa_left);

draw_set_colour(c_black);
draw_text(font_size, font_size, "x: " + string(mouse_coords._x));
draw_text(font_size, font_size + 2 * font_size, "y: " + string(mouse_coords._y));
draw_set_colour(c_white);

draw_set_halign(fa_center);
