tic
 a = zeros(1,1);
i =0;
for b =1000:-1:1
    i = i+1;
a(i) = b;
end

min =0;
for i=1:1:numel(a)
    min = a(i);
    temp_ind = -1;
   for j =i : 1:numel(a)
       if(min> a(j))
        temp_ind = j;
        min = a(j);
       end

   end
   if(temp_ind ~= -1)
    temp_var = a(i);
    a(i) = a(temp_ind);
    a(temp_ind) = temp_var;
   end
end
toc

