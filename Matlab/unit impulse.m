t=-1000:1:1000;
y=[zeros(1,1000) ones(1,1) zeros(1,1000)];
xlabel('time');
ylabel('Amplitude');
title('impulse');
axis([-1000 1000 0 5]);
plot(t,y);