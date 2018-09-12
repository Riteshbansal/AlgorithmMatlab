tic
 a = zeros(1,1);
i =0;
cmp = 0;
exc = 0;
for b =1000000 :-1:1
    i = i+1;
a(i) = b;
end

 
 h =565000;
 x = numel(a);
 
temp =0;
 while(h>=1)
    for j=1:1:numel(a)-h
   
%         for j =i:h:numel(a)
       
            if(a(j)> a(j+h))
                temp = a(j);
                a(j) = a(j+h);
                a(j+h) = temp;
                exc= exc +1;
            end
            cmp = cmp+1;
%         end
        
        
    end
    h = floor(h/2);
end
% fid=fopen('MyFile.txt','w');
% fprintf(fid, '%f \n', a');

toc