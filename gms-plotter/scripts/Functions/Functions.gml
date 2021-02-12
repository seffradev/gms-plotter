function test(x) {
	return x * x + 3 * x + 2;
}

function derivative(x, f) {
	var h = 0.001;
	return (f(x + h) - f(x - h)) / (2 * h);
}

function tangent(x) {
	var f = sin;
	var point = 2;
	
	return (x - point) * derivative(point, f) + f(point);
}
