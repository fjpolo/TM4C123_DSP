%
pkg load control;
pkg load signal;
clear all;
clc
close all;
% Sine wave
fs = 5000; %5000Hz sampling frequency
f = 100;
t = (0:50)/fs;
x = sin(2*pi*f*t);
figure(1)
subplot(4,1,1)
plot(t,x)
#add white noise
L = 51;
mu = 0,7;
sigma = 0.5;
wn = sigma*randn(L,1)+mu;
wn = wn';
subplot(4,1,2)
plot(wn)
%
y = x+wn;
subplot(4,1,3)
plot(t,y)

%
%
%
