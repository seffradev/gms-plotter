/// @function					plot_point2d(x, y);
/// @param {real} x				x-coordinate of point
/// @param {real} y				y-coordinate of point
/// @description				Plots a point at (x, y). 
function plot_point2d(x, y) {
	var temp = map2d(x, y);
	draw_point(temp._x, temp._y);
}

/// @function					plot_circle(x, y, radius);
/// @param {real} x				x-coordinate of circle center
/// @param {real} y				y-coordinate of circle center
/// @param {real} radius		radius of circle
/// @description				Plots a circle with center at (x, y) and "radius" as radius. 
function plot_circle(x, y, radius) {
	var temp = map2d(x, y);
	var temp2 = scale2d(radius, radius);
	
	draw_ellipse(temp._x - temp2._x, temp._y - temp2._y, temp._x + temp2._x, temp._y + temp2._y, true);
}

/// @function					plot_line2d(x1, y1, x2, y2);
/// @param {real} x1			x-coordinate of starting point
/// @param {real} y1			y-coordinate of starting point
/// @param {real} x2			x-coordinate of ending point
/// @param {real} y2			y-coordinate of ending point
/// @description				Plots a line between (x1, y1) and (x2, y2). 
function plot_line2d(x1, y1, x2, y2) {
	var map1 = map2d(x1, y1);
	var map2 = map2d(x2, y2);
	
	draw_line(map1._x, map1._y, map2._x, map2._y);
}

/// @function					plot_line2d_width(x1, y1, x2, y2, line_width);
/// @param {real} x1			x-coordinate of starting point
/// @param {real} y1			y-coordinate of starting point
/// @param {real} x2			x-coordinate of ending point
/// @param {real} y2			y-coordinate of ending point
/// @param {real} line_width	width of the line
/// @description				Plots a line with line_width between (x1, y1) and (x2, y2). 
function plot_line2d_width(x1, y1, x2, y2, line_width) {
	var map1 = map2d(x1, y1);
	var map2 = map2d(x2, y2);
	
	draw_line_width(map1._x, map1._y, map2._x, map2._y, line_width);
}

function plot_vector2d(vector) {
	var map1 = map2d(vector._x1, vector._y1);
	var map2 = map2d(vector._x2, vector._y2);
	
	draw_arrow(map1._x, map1._y, map2._x, map2._y, 10);
}

function plot_vector2d_width(vector, width) {
	var map1 = map2d(vector._x1, vector._y1);
	var map2 = map2d(vector._x2, vector._y2);
	
	draw_arrow(map1._x, map1._y, map2._x, map2._y, width);
}

/// @function					plot2d(x, f);
/// @param {array} x			list of x-values to plot at
/// @param {function} f			the function to plot
/// @description				Plots the function f(x) at every value x. 
function plot2d(x, f) {
	len = array_length(x);
		
	for(i = 1; i < len; i++)
		plot_line2d(x[i-1], f(x[i-1]), x[i], f(x[i]));
}

function plot2d_width(x, f, line_width) {
	len = array_length(x);
		
	for(i = 1; i < len; i++)
		plot_line2d_width(x[i-1], f(x[i-1]), x[i], f(x[i]), line_width);
}

function scatter2d(x, f) {
	len = array_length(x);
		
	for(i = 0; i < len; i++)
		plot_point2d(x[i], f(x[i]));
}

function plot2d_coords(x, y) {
	lenx = array_length(x);
	leny = array_length(y);
	
	if lenx != leny
		exit;
	
	for(i = 1; i < lenx; i++)
		plot_line2d(x[i-1], y[i-1], x[i], y[i]);
}

function plot2d_coords_width(x, y, line_width) {
	lenx = array_length(x);
	leny = array_length(y);
	
	if lenx != leny
		exit;
	
	for(i = 1; i < lenx; i++)
		plot_line2d_width(x[i-1], y[i-1], x[i], y[i], line_width);
}

function plot2d_parametric(x, y, f) {
	len = array_length(x);
		
	for(i = 1; i < len; i++)
		plot_line2d_width(x[i-1], f(x[i-1]), x[i], f(x[i]), line_width);
}

/// @function				plot_text(x, y, text);
/// @param {real} x			x-coordinate of text
/// @param {real} y			y-coordinate of text
/// @param {string} text	the text to plot
/// @description			Plots the string given by text at position (x, y). 
function plot_text(x, y, text) {
	var temp = map2d(x, y);
	
	draw_text(temp._x, temp._y, text);
}
