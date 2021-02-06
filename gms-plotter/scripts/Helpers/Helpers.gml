/// @function			map(x, y);
/// @param {real} x		x-coordinate to map
/// @param {real} y		y-coordinate to map
/// @returns {struct}
/// @description		Maps (x, y) from mathematical notation to GameMaker rendering. 
function map2d(x, y) {
	if !instance_exists(objGrid)
		exit;
	
	gridX = objGrid.gridline_horizontal + x * objGrid.grid_xscale * objGrid.pixel_scale;
	gridY = objGrid.gridline_vertical - y * objGrid.grid_yscale * objGrid.pixel_scale;
	
	return { _x: gridX, _y: gridY };
}

function reverse_map2d(x, y) {
	if !instance_exists(objGrid)
		exit;
	
	gridX = (x - objGrid.gridline_horizontal) / (objGrid.grid_xscale * objGrid.pixel_scale);
	gridY = -(y - objGrid.gridline_vertical) / (objGrid.grid_yscale * objGrid.pixel_scale);
	
	return { _x: gridX, _y: gridY };
}

/// @function			scale(x, y);
/// @param {real} x		x-coordinate to scale
/// @param {real} y		y-coordinate to scale
/// @returns {struct}
/// @description		Scales a point in mathematical space to GameMaker rendering. 
function scale2d(x, y) {
	if !instance_exists(objGrid)
		exit;
	
	gridX =   x * objGrid.grid_xscale * objGrid.pixel_scale;
	gridY = - y * objGrid.grid_yscale * objGrid.pixel_scale;
	
	return { _x: gridX, _y: gridY };
}

function reverse_scale2d(x, y) {
	if !instance_exists(objGrid)
		exit;
	
	gridX =   x / (objGrid.grid_xscale * objGrid.pixel_scale);
	gridY = - y / (objGrid.grid_yscale * objGrid.pixel_scale);
	
	return { _x: gridX, _y: gridY };
}

function linspace(start, stop, n) {
	arr = array_create(n + 1);
	
	h = (stop - start) / n;
	
	for(i = 0; i < n; i++) {
		arr[i] = start + h * i;
	}
	
	arr[n] = stop;
	
	return arr;
}
