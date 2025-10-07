tspan = [0 0.002];    
x0 = [0; 0];

f_pwm = 100e3;       
opts = odeset('MaxStep', 1/(f_pwm*100)); 

[t, x] = ode45(@sisPMW, tspan, x0, opts);

figure;
plot(t, x(:,1)); 
grid on;
xlabel('Tiempo (s)');
ylabel('Corriente (A)');
title('Corriente i(t) - Codigo');

figure;
plot(t, x(:,2)); 
grid on;
xlabel('Tiempo (s)');
ylabel('Voltaje (C)');
title('Voltaje v(t) - Codigo');