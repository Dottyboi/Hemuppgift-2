z=mkhwdata([040622;010326]);

[Z,nu]=tdftfast(z);

n = 0:(length(z) - 1);

mult  = exp(1i*0.5*pi.*n);

[z1] = abs(z.*transpose(mult)); 

[b, a] = butter(5, 0.3, "low");

freqz(b,a,nu,"whole",0.5);

y = filter(b,a,z1);

present_image(y);