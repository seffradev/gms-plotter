/// @description 
if !draw
	exit;

var font_size = font_get_size(draw_get_font());

var logical_coords1 = reverse_map2d(mx1, my1);
var logical_coords2	= reverse_map2d(mx2, my2);

var logical_font_size = reverse_scale2d(font_size, font_size)._y;

var logical_mx1 = logical_coords1._x;
var logical_my1 = logical_coords1._y;

var logical_mx2 = logical_coords2._x;
var logical_my2 = logical_coords2._y;

draw_set_colour(c_black);
draw_set_alpha(0.6);

draw_rectangle(mx1, my1, mx2, my2, true);

draw_set_alpha(0.1);

draw_rectangle(mx1, my1, mx2, my2, false);

draw_set_alpha(1);
draw_set_colour(c_white);

if !selection_coords
	exit;
	
draw_set_alpha(0.6);
draw_set_colour(c_black);

if logical_my1 > logical_my2 {	
	plot_text(logical_mx1, logical_my1 - logical_font_size, "(" + string(logical_mx1) + "," + string(logical_my1) + ")");
	plot_text(logical_mx2, logical_my2 + logical_font_size, "(" + string(logical_mx2) + "," + string(logical_my2) + ")");
} else {	
	plot_text(logical_mx1, logical_my1 + logical_font_size, "(" + string(logical_mx1) + "," + string(logical_my1) + ")");
	plot_text(logical_mx2, logical_my2 - logical_font_size, "(" + string(logical_mx2) + "," + string(logical_my2) + ")");
}

draw_set_alpha(1);
draw_set_colour(c_white);