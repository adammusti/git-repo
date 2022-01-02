% pulse width modulation
clc
close all
fc=1000;
fs=10000;
f1=200;
t=0:1/fs:((2/f1)-(1/fs));
x1=0.4*cos(2*pi*f1*t)+0.5;
%modulation
y1=modulate(x1,fc,fs,'pwm');
subplot(311);
plot(x1);
axis([0 50 0 1]);
title('original signal taken mesage,f1=500,fs=10000')
subplot(312);
plot(y1);
axis([0 500 -0.2 1.2]);
title('PWM')