function [ x, y ] = noisyLinear( alpha, beta, Xl, step, v )
    x = Xl(1):step:Xl(2);
    y_clean = alpha * x + beta;
    noise = sqrt(v) * randn(size(x));
    y = y_clean + noise;
end
