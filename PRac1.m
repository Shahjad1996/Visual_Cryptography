clc;
clear all;
t=0:0.001:10;
fm=input('Enter the max value of Modulating Signal Frequency (in Hz): ');
x=sin(2*pi*fm*t);
subplot(4,2,1);
plot(t,x);
xlabel('Time ->');
ylabel('Amplitude ->');
title('Analog Sinusoidal Signal');
fs1=input('Enter the first  sampling frequency with fs < 2fm : ');
fs2=input('Enter the second sampling frequency with fs = 2fm : ');
fs3=input('Enter the third  sampling frequency with fs > 2fm : ');

%Sampling and Reconstruction at Fs < 2Fm
t1=0:1/fs1:10;
x1=sin(2*pi*fm*t1);
subplot(4,2,3);
stem(t1,x1);
xlabel('Time ->');
ylabel('Amplitude ->');
title('Discrete Sampled Signal at Fs < 2Fm');

subplot(4,2,4);
plot(t1,x1);
xlabel('Time ->');
ylabel('Amplitude ->');
title('Discrete Sampled Signal Reconstruction at Fs < 2Fm');

%Sampling and Reconstruction at Fs = 2Fm
t1=0:1/fs2:10;
x1=sin(2*pi*fm*t1);
subplot(4,2,5);
stem(t1,x1);
xlabel('Time ->');
ylabel('Amplitude ->');
title('Discrete Sampled Signal at Fs = 2Fm');

subplot(4,2,6);
plot(t1,x1);
xlabel('Time ->');
ylabel('Amplitude ->');
title('Discrete Sampled Signal Reconstruction at Fs = 2Fm');

%Sampling and Reconstruction at Fs > 2Fm
t1=0:1/fs3:10;
x1=sin(2*pi*fm*t1);
subplot(4,2,7);
stem(t1,x1);
xlabel('Time ->');
ylabel('Amplitude ->');
title('Discrete Sampled Signal at Fs > 2Fm');

subplot(4,2,8);
plot(t1,x1);
xlabel('Time ->');
ylabel('Amplitude ->');
title('Discrete Sampled Signal Reconstruction at Fs > 2Fm');