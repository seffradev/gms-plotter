/// @function			vector2d(x, y);
/// @param {real} x		x-coordinate of vector
/// @param {real} y		y-coordinate of vector
/// @returns {struct}
/// @description		Returns a 2D vector from (0, 0) to (x, y). 
function vector2d(x, y) {
	return { _x1: 0, _y1: 0, _x2: x, _y2: y };
}

/// @function			vector2d_to(x1, y1, x2, y2);
/// @param {real} x1	x-coordinate of first point
/// @param {real} y1	y-coordinate of first point
/// @param {real} x2	x-coordinate of second point
/// @param {real} y2	y-coordinate of second point
/// @returns {struct}
/// @description		Returns a 2D vector from (x1, y1) to (x2, y2). 
function vector2d_to(x1, y1, x2, y2) {
	return { _x1: x1, _y1: y1, _x2: x2, _y2: y2 };
}

/// @function			vector3d(x, y);
/// @param {real} x		x-coordinate of vector
/// @param {real} y		y-coordinate of vector
/// @param {real} z		z-coordinate of vector
/// @returns {struct}
/// @description		Returns a 3D vector from (0, 0, 0) to (x, y, z). 
function vector3d(x, y, z) {
	return { _x1: 0, _y1: 0, _z1: 0, _x2: x, _y2: y, _z2: z };
}

/// @function			vector3d_to(x1, y1, z1, x2, y2, z2);
/// @param {real} x1	x-coordinate of first point
/// @param {real} y1	y-coordinate of first point
/// @param {real} z1	z-coordinate of first point
/// @param {real} x2	x-coordinate of second point
/// @param {real} y2	y-coordinate of second point
/// @param {real} z2	z-coordinate of second point
/// @returns {struct}
/// @description		Returns a 3D vector from (x1, y1, z1) to (x2, y2, z2). 
function vector3d_to(x1, y1, z1, x2, y2, z2) {
	return { _x1: x1, _y1: y1, _z1: z1, _x2: x2, _y2: y2, _z2: z2 };
}
