z=mkhwdata([040622;010326]);

n = 0:(length(z) - 1);

mult  = cos(0.5*pi*n);

[z1] =  (z.*transpose(mult)); 

[Z,nu]=tdftfast(z1);

plot(nu, abs(Z))
xlabel('ν');
ylabel('amplitud');

[b, a] = butter(5, 0.1, "low");

freqz(b,a,nu);

y = filter(b,a,z1);

%present_image(y);