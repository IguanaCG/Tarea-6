
t_span = [0 0.002];
x0 = [0; 0];      

[t, x] = ode45(@sisPMW, t_span, x0);


corriente_iL = x(:, 1);
voltaje_Vc = x(:, 2);


figure; 



plot(t, corriente_iL, 'b-', 'LineWidth', 1.5);
title('Corriente en el Inductor (i_L)');
xlabel('Tiempo (s)');
ylabel('Corriente (A)');
grid on;


figure; 
plot(t, voltaje_Vc, 'r-', 'LineWidth', 1.5);
title('Voltaje en el Capacitor (V_c)');
xlabel('Tiempo (s)');
ylabel('Voltaje (V)');
grid on;