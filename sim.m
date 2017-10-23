fullscale = .1;
t_signal = .5*fullscale;
snr = 50; %db
noise_db = 10*log10(t_signal/fullscale)-snr;
noise_amplitude = 10^(noise_db/10);
fs = 12.5;
duration = 10;%sec
t = 0:1/fs:duration;
freq = .5; %hz
noise = noise_amplitude*sin(2*pi*freq*t);
signal = t_signal+noise;
plot(signal);
%ylim([0 .1]);
