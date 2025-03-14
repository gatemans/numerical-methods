%% Simpson's Rule
% Author: Mohammad Mahdi Khaligh
% This function approximates the integral of a function using Simpson's Rule

function I = simpsonsRule(f, a, b, n)
    if mod(n, 2) ~= 0
        error('n must be even.');
    end
    h = (b - a) / n;
    x = a:h:b;
    y = f(x);
    I = (h/3) * (y(1) + 4 * sum(y(2:2:end-1)) + 2 * sum(y(3:2:end-2)) + y(end));
end
