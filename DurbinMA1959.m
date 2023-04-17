function b = DurbinMA1959(tsvector,q)
% Durbin 1959 Approximation Method for MA parameter
% This function uses the Durbin (1959) Approximation method to approximate
% the MA parameter for the special case MA(1) and the general case of any
% MA(q) model
% Parameters of the function:
% tsvector = time series vector
% q = integer


% Estimate a term with OLS Paolella 4.14a
Y = tsvector

len = length(Y)
I_t = eye(len-1,len-1)
z_vec = zeros(len-1,1)

D_t = [z_vec I_t]
D_tm1 = [I_t z_vec]

numerator = Y' * D_tm1' * D_t * Y
denominator = Y' * D_tm1' * D_tm1 * Y

a_ols = numerator / denominator

% 1. Part Special case for MA(1)

numerator =
denominator = 



% 2. Part General case for any MA(q) model

b_MA1 = ????
b_MAq = ????

end