% Define the numerator and denominator coefficients
numerator = [1 1]; % Coefficients of s + 1
denominator = [1 2 5]; % Coefficients of s^2 + 2s + 5

% Create the transfer function
H = tf(numerator, denominator);

% Plot the step response
figure;
step(H);
title('Step Response of H(s) = (s + 1)/(s^2 + 2s + 5)');
xlabel('Time (s)');
ylabel('Amplitude');

% Plot the impulse response
figure;
impulse(H);
title('Impulse Response of H(s) = (s + 1)/(s^2 + 2s + 5)');
xlabel('Time (s)');
ylabel('Amplitude');

% Plot the Bode plot for frequency response analysis
figure;
bode(H);
title('Bode Plot of H(s) = (s + 1)/(s^2 + 2s + 5)');
grid on;
