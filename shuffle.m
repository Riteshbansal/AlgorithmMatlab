function arr_out = shuffle( arr_ins)

            N = numel(arr_ins);
     
            for i  = 1:1:N-1
            r = i+ randi(N-i);
            temp = arr_ins(i);
            arr_ins(i) = arr_ins(r);
            arr_ins(r) = temp;
            end
        arr_out = arr_ins;
        end