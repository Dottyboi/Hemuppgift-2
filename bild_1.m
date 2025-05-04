z=mkhwdata([040622;010326]);

[Z,nu]=tdftfast(z);

[b, a] = butter(5, 0.2, "low");

freqz(b,a,nu);

y = filter(b,a,z);

%present_image(y);