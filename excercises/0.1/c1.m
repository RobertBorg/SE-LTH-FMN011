%{
	Using matlab and nest.m to evaluate 
	P(x) = 1 + x + x^2 + x^3 + ... + x^50 at x = 1.00001
	comparing the output with the equivalent expression
	Q(x) = (x^51 - 1)/(x - 1)

%}
function e = c1()
	x=1.00001;
	y = nest(50, ones(51,1), x);
	q = (x^51 - 1) / (x - 1);
	err = abs(q - y)
	rel_err = err / abs(q)