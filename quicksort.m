classdef quicksort<handle
   
    methods
    
        function [arr , part] = partition(~,a, lo , hi)
        
        i = lo+1;
        j = hi;
        
        while(true)
        
            while(a(i) < a(lo))
            i = i+1;
                 if(i == hi)
                      break;
                  end
            end
            
             while(a(j) > a(lo))
                j = j-1;
                 if(j == lo)
                   break;
                 end
             end
             
             
            if (i>j)
                break;
            end
            temp = a(i);
            a(i) = a(j);
            a(j) = temp;
        end
            temp = a(lo);
            a(lo) = a(j);
            a(j) = temp;
            
            arr =a;
            part = j;
        end
   
        function y = sort(obj ,a)
        a = obj.shuffle(a);
        y = obj.sort_y(a, 1, numel(a));
        
        end
    
        function k = sort_y (obj, a,lo, hi)
            if(hi<=lo)
                k =a;
                return;
            end
            [a, i] = obj.partition(a,lo,hi);
            a = obj.sort_y(a,lo,i);
            a= obj.sort_y(a,i+1,hi);
            k = a;
        end
        function arr_out = shuffle(~, arr_ins)

            N = numel(arr_ins);
     
            for i  = 1:1:N-1
            r = i+ randi(N-i);
            temp = arr_ins(i);
            arr_ins(i) = arr_ins(r);
            arr_ins(r) = temp;
            end
        arr_out = arr_ins;
        end
    end
end