function dx = sisPMW(t, x)
    f_pwm = 100e3;    
    duty = 40;        
    L = 2e-3;
    R = 10;
    C = 10e-6;
    U = 32;

  
    d = double(square(2*pi*f_pwm*t, duty) > 0);

    
    i = x(1);
    V = x(2);

    
    ip = (1/L)*(U*d - V);
    vp = (1/C)*(i - V/R);

    dx = [ip; vp];
end
