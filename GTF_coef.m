% Constants & Functions
rect = @(Td, t) (1/Td)*(heaviside(t + Td/2) - heaviside(t - Td/2));
% P = @(t) conv((DESIGN_CONST.h * DESIGN_CONST.T * exp(-t.^2/(2*DESIGN_CONST.SIGMA^2)) / (2*DESIGN_CONST.SIGMA*sqrt(2*pi))), rect(DESIGN_CONST.Td, t), "full");
P = @(t) (DESIGN_CONST.T * DESIGN_CONST.h * exp(-t.^2/(2*DESIGN_CONST.SIGMA^2)) / (DESIGN_CONST.Td * DESIGN_CONST.SIGMA * sqrt(2*pi)));

% 5 sample periods
k = 0 : DESIGN_CONST.T : 5 * DESIGN_CONST.Td;

% Tap Coefs
GTF_tap_coefficients = P(k);