function sum = recu_add(x)
if(x>=0 &&x<10)
    sum = x;
else
str = num2str(x);
z=1;
for a =1:1:length(str)-1
z= z*10;
end
 y = floor(x/z); 
 sum = y + recu_add(mod(x,z));
end
end