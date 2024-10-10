%1a.i.
fs = 10e8;
f_rf=9*10e8;
fd=10e6;
BTd=0.3; %GSM
h=0.5; %GSM
N=30;
O=5;
span=5;
N_taps = span * fs/fd;  % Number of filter 
t = (-N_taps/2:N_taps/2-1) *(1/fs);
sigma=0.833*(1/fd)*(1/(BTd*2*pi));
P_t = h*(1/fs)*(1/(2*2*sqrt(2*pi)*sigma))*exp((-1/2)*(t./sigma).^2);
P_t=P_t/ sum(P_t);
stem(t,P_t);
freqz(P_t)
%1a.ii.
prbs_data = 2 * randi([0, 1],1, N) - 1;  % PRBS alternating between 1 and -1
prbs_data_upsampled =upsample(prbs_data, fs / fd);  
filtered_data = filter(P_t, 1, prbs_data_upsampled);
subplot(3,1,1)
plot(filtered_data*fs/fd);
subplot(3,1,2)
plot(prbs_data_upsampled)

eyediagram(filtered_data, 2 * fs / fd);  % Plot eye diagram with 2 symbol periods
%1b.i.
Kph = 2* pi/fd;
% Frequency-to-Phase conversion (accumulator)
phase = cumsum(filtered_data * Kph);  % Accumulate frequency data to get phase
figure;
plot(phase);
% Compute I and Q signals
Q_signal = sin(phase);  % Quadrature component
I_signal = cos(phase);  % In-phase component


% % Plot I and Q signals
% figure;
% subplot(2,1,1);
% plot(t, I_signal);
% title('I Signal');
% xlabel('Time (s)');
% ylabel('Amplitude');
% 
% subplot(2,1,2);
% plot(t, Q_signal);
% title('Q Signal');
% xlabel('Time (s)');
% ylabel('Amplitude');

%eyediagram(phase, 2 *fs/fd);
% Plot eye diagrams for I and Q signals
eyediagram(I_signal, 2 *fs/fd);  % Eye diagram for I signal
title('Eye Diagram of I Signal');

eyediagram(Q_signal, 2 * fs/fd);  % Eye diagram for Q signal
title('Eye Diagram of Q Signal');
% plot(I_signal);
% hold on;
% plot(Q_signal);
% xlabel('Time');
% ylabel('Amplitude');
% title('I and Q Signals');
% legend('I Signal', 'Q Signal');