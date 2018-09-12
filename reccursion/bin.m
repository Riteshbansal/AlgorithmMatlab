function str = bin(x)

if(x ==0 || x==1)
    if(x==0)
    str = '0';
    else
        str='1';
    end
else
    y =mod(x,2);
    s = num2str(y);
    
str = strcat(bin(floor(x/2)),s);    
end

end
