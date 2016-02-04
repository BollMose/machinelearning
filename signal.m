
# simple fft
t=0:0.001:2;
x=2*sin(20*pi*t) + sin(100*pi*t);
subplot(2,1,1);
plot(1000*t,x);
grid;
xlabel("Time in milliseconds");
ylabel("Signal amplitude");

subplot(2,1,2);
y=fft(x);
plot(1000*t,abs(y));
xlabel("Frequency");
ylabel("Signal amplitude");

# fft
n = [0:149];
x1 = cos(2*pi*n/10);
N = 2048;
X = abs(fft(x1,N));
X = fftshift(X);
F = [-N/2:N/2-1]/N;
plot(F,X);
xlabel(’frequency / f s’)
