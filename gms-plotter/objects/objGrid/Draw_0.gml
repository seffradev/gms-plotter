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
	draw_set_circle_precision((abs(camera_x) + abs(camera_y) + camera_width + camera_height));
	
	for(i = 0; i < abs(camera_x) + abs(camera_y) + camera_width + camera_height; i += pixel_scale) {
		draw_ellipse(gridline_vertical - (i + 1) * grid_xscale, gridline_horizontal - (i + 1) * grid_yscale, gridline_vertical + (i + 1) * grid_xscale, gridline_horizontal + (i + 1) * grid_yscale, true);
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
			draw_text(gridline_vertical + font_size + 4, i, -((i - gridline_horizontal) / pixel_scale));
	}

	for(i = gridline_horizontal; i < camera_y + camera_height; i += pixel_scale * grid_yscale) {
		if i == gridline_horizontal continue;
	
		if axes
			draw_line_width(gridline_vertical - font_size / 2, i, gridline_vertical + font_size / 2, i, subgridline_width);
		
		if labels
			draw_text(gridline_vertical + font_size + 6, i, -((i - gridline_horizontal) / pixel_scale));
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
			draw_text(i, gridline_horizontal + font_size + 4, ((i - gridline_vertical) / pixel_scale));
	}

	for(i = gridline_vertical; i > camera_x; i -= pixel_scale * grid_xscale) {
		if i == gridline_vertical continue;
	
		if axes
			draw_line_width(i, gridline_horizontal - font_size / 2, i, gridline_horizontal + font_size / 2, subgridline_width);
	
		if labels
			draw_text(i, gridline_horizontal + font_size + 4, ((i - gridline_vertical) / pixel_scale));
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
