%{
	Using matlab and nest.m to evaluate 
	P(x) = 1 - x + x^2 - x^3 + ... - x^99 at x = 1.00001
	comparing the output with the equivalent expression
	Q(x) = (1 - x^100)/(x + 1)

%}
function e = c2()
	x=1.00001;
	c = ones(100,1);
	for i=2:1:100
		c(i) = c(i-1)*-1;
	end
	y = nest(99, c, x);
	q = (1 - x^100) / (x + 1);
	err = abs(q - y)
	rel_err = err / abs(q)