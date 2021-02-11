/// @description Draw the Grid
draw_set_font(fntGrid);
font_size = font_get_size(draw_get_font());
var camera = objView.camera;

camera_x = camera_get_view_x(camera);
camera_y = camera_get_view_y(camera);
camera_width = camera_get_view_width(camera);
camera_height = camera_get_view_height(camera);

draw_set_colour(c_black);
draw_set_alpha(0.75);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if axes {
	if x_axis
		draw_line_width(camera_x, gridline_horizontal, camera_x + camera_width, gridline_horizontal, gridline_width);
		
	if y_axis
		draw_line_width(gridline_vertical, camera_y, gridline_vertical, camera_y + camera_height, gridline_width);
}

if axis_labels {
	if x_axis
		draw_text(camera_x + camera_width - font_size * 2, gridline_horizontal - font_size, x_label);
	
	if y_axis
		draw_text(gridline_vertical - font_size, camera_y + font_size * 2, y_label);
}

if polar {
	for(i = 0; i < abs(camera_x) + abs(camera_y) + camera_width + camera_height; i += pixel_scale * grid_xscale) {
		draw_circle(gridline_vertical, gridline_horizontal, i, true);
	}
}

if division_grids {
	draw_set_alpha(0.25);
	
	if y_axis {
		for(i = gridline_horizontal; i > camera_y; i -= pixel_scale * grid_yscale / subgrid_yscale)
			draw_line_width(camera_x, i, camera_x + camera_width, i, subgridline_width);
	
		for(i = gridline_horizontal; i < camera_y + camera_height; i += pixel_scale * grid_yscale / subgrid_yscale)
			draw_line_width(camera_x, i, camera_x + camera_width, i, subgridline_width);
	}
	
	if x_axis {
		for(i = gridline_vertical; i < camera_x + camera_width; i += pixel_scale * grid_xscale / subgrid_xscale)
			draw_line_width(i, camera_y, i, camera_y + camera_height, subgridline_width);
	
		for(i = gridline_vertical; i > camera_x; i -= pixel_scale * grid_xscale / subgrid_xscale)
			draw_line_width(i, camera_y, i, camera_y + camera_height, subgridline_width);
	}
	
	draw_set_alpha(0.75);
}

if y_axis {
	for(i = gridline_horizontal; i > camera_y; i -= pixel_scale * grid_yscale) {
		if i == gridline_horizontal continue;
	
		if axes
			draw_line_width(gridline_vertical - font_size / 2, i, gridline_vertical + font_size / 2, i, subgridline_width);
	
		if labels
			draw_text(gridline_vertical + font_size + 4, i, -floor((i - gridline_horizontal) / pixel_scale));
	}

	for(i = gridline_horizontal; i < camera_y + camera_height; i += pixel_scale * grid_yscale) {
		if i == gridline_horizontal continue;
	
		if axes
			draw_line_width(gridline_vertical - font_size / 2, i, gridline_vertical + font_size / 2, i, subgridline_width);
		
		if labels
			draw_text(gridline_vertical + font_size + 6, i, -floor((i - gridline_horizontal) / pixel_scale));
	}
	
	if !x_axis {
		if axes
			draw_line_width(gridline_vertical - font_size / 2, gridline_horizontal, gridline_vertical + font_size / 2, gridline_horizontal, subgridline_width);
		if labels
			draw_text(gridline_vertical + font_size + 6, gridline_horizontal, 0);
	}		
}

if x_axis {
	for(i = gridline_vertical; i < camera_x + camera_width; i += pixel_scale * grid_xscale) {
		if i == gridline_vertical continue;

		if axes
			draw_line_width(i, gridline_horizontal - font_size / 2, i, gridline_horizontal + font_size / 2, subgridline_width);
	
		if labels
			draw_text(i, gridline_horizontal + font_size + 4, floor((i - gridline_vertical) / pixel_scale));
	}

	for(i = gridline_vertical; i > camera_x; i -= pixel_scale * grid_xscale) {
		if i == gridline_vertical continue;
	
		if axes
			draw_line_width(i, gridline_horizontal - font_size / 2, i, gridline_horizontal + font_size / 2, subgridline_width);
	
		if labels
			draw_text(i, gridline_horizontal + font_size + 4, floor((i - gridline_vertical) / pixel_scale));
	}
	
	if !y_axis {
		if axes
			draw_line_width(gridline_vertical, gridline_horizontal - font_size / 2, gridline_vertical, gridline_horizontal + font_size / 2, subgridline_width);
		if labels
			draw_text(gridline_vertical, gridline_horizontal + font_size + 4, 0);
	}
}

draw_set_colour(c_white);
draw_set_alpha(1);

if !plots
	exit;

draw_set_colour(c_black);

/*
plot_point2d(1, 1);
plot_circle(-5, 2, 3);
plot_line2d(2, -3, 5, 4);
plot_line2d_width(-16, 5, 32, -4, 5);
*/

/*
arr = linspace(-5, 5, 100);
draw_set_colour(c_red);
plot2d_width(arr, sin, 2);
plot_text(pi/2 + 1, 1, "f(x)=sinx");
draw_set_colour(c_blue);
plot2d_width(arr, cos, 2);
plot_text(0, 1.3, "f(x)=cosx");
draw_set_colour(c_black);
plot2d_width(arr, quadratic, 2);
plot_text(-1, 4, "f(x)=x^2");
*/
vec = vector2d(3, 4);
vec2 = vector2d_from_coords(-2, 1, 3, 5);
vec3 = vector2d_from_angle(5, 11*pi/6);

plot_vector2d(vec);
plot_vector2d_width(vec2, 10);
plot_vector2d_width(vec3, 15);

draw_set_colour(c_white);

