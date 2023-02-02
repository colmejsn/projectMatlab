function [ P1,f ] = Get_FFT( Y, Fs, L )
S = fft(Y);
P2 = abs(S/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = Fs*(0:(L/2))/L;
end