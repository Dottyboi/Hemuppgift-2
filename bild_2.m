z=mkhwdata([040622;010326]);

n = 0:(length(z) - 1);

mult  = cos(pi*n);

[z1] = (z.*transpose(mult)); 

[Z,nu]=tdftfast(z1);

plot(nu, abs(Z));

[b, a] = butter(5, 0.15, "low");

%freqz(b,a,nu,"whole",0.5);

y = filter(b,a,z1);

%present_image(y);