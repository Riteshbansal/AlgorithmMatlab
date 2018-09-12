function x = fibb0(n)

if( n ==2)
    x =zeros(1,1);
    x(1) = 1;
    x(2) =1;
    
    
else
    x = fibb0(n-1);
    
    x(n) = x(n-1) + x(n-2);
    
    z = x(n);
    
end