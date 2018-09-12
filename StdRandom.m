classdef StdRandom < handle
    
    
    methods(Static)
        function arr_out = shuffle(~, arr_ins)
            k = 10;
            k =100;
            N = numel(arr_ins);
     
            for i  = 1:1:N
            r = i+ randi(N-i);
            temp = a(i);
            a(i) = a(r);
            a(r) = temp;
            end
        arr_out = arr_ins;
    end
    end
end