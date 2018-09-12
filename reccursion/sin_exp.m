function z  = sin_exp(x,l)
z = x;
n = 1;
k =0;
for a =3:2:l
    k = (x^a)/(factorial(a));
    z=z + (((-1)^n)*k); 
    n =n+1;
end

end