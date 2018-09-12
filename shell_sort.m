tic
 a = zeros(1,1);
i =0;
cmp = 0;
exc = 0;
for b =100000 :-1:1
    i = i+1;
a(i) = b;
end

h=1;
while(h<(numel(a)/3))
h = 3*h+1;
end

% h =56;
temp =0;
 while(h>=1)
    for i=h:1:numel(a)
        for j =i:-h:1      
            if((j-h >=1) && (a(j)< a(j-h)))
                temp = a(j);
                a(j) = a(j-h);
                a(j-h) = temp;
                exc= exc +1;
            end
            cmp = cmp+1;
        end
    end
    h = floor(h/3);
end


toc