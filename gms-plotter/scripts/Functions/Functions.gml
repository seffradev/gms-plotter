function quadratic(x, a, b, c) {
	if a == undefined
		a = 1;
	if b == undefined
		b = 0;
	if c == undefined
		c = 0;
	
	return a * x * x + b * x + c;
}
