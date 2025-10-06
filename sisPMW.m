function dx = sisPMW(t, x)
    PWM = 100e3;
    duty = 40;
    L = 2e-3;
    R = 10;
    C = 10e-6;
    U = 32;

    d = 0.5 * (square(2 * pi * PWM * t, duty) + 1);
   
    i = x(1);      
    V = x(2);     
   
    ip = -(1/L)*V + (U/L)*d
    vp = (1/C)*i - (1/(R*C))*V
    
   
    dx = zeros(2, 1);
    dx(1) = ip;    
    dx(2) = vp;   
end