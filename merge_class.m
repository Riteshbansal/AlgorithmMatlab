classdef merge_class < handle
    methods
        function  k = merge(~, a, aux, lo, mid, hi)
%         a = obj.sort_define(a, lo, mid);
%         a = obj.sort_define(a, mid +1, hi);
            for i = lo:1:hi
            aux(i) = a(i);
            end
            j = lo;
            i = mid+1;
            for k = lo:1:hi
                if(i>hi)
                    a(k) = aux(j);
                    j = j+1;
                elseif(j>mid)
                     a(k) = aux(i);
                      
                        i = i+1;
                elseif(aux(j)< aux(i))
                    a(k) = aux(j);
                    j = j+1;
                elseif(aux(i)< aux(j))
                    a(k) = aux(i);
                      
                        i = i+1;
                     
                elseif(aux(i)== aux(j))
                     a(k) = aux(i);
                     
                        i = i+1;
                     
                end
            end
            k = a;
        end
%     end
%     methods(Access = private)
function k=  sort_pr(obj, a,aux, lo , hi)
        
%           if(mod(hi,2)==0)
%             mid = hi/2;
%           else
%             mid = (hi-1)/2;
%           end
            if(hi <= lo)
                
                k = a;
            return;
            end
            mid = lo + floor((hi-lo)/2);
            a = obj.sort_pr(a,aux,lo, mid);
           a = obj.sort_pr(a,aux,mid+1, hi);
           k =  obj.merge(a,aux,lo,mid,hi);
        end



        function b = sort_define(~, a, strtpoint, endingpoint)
             h =ceil(numel(a) * 0.565);
             if(mod(numel(a),2)==1 &&(mod(h,2)==0))
                 h = h+1;
             elseif(mod(numel(a),2)==0 &&(mod(h,2)==1))
                 h = h+1;
             end
                temp =0; %#ok<NASGU>
            while(h>=1)
                 for j=strtpoint:1:endingpoint-h
                        if(a(j)> a(j+h))
                         temp = a(j);
                         a(j) = a(j+h);
                         a(j+h) = temp;
                        end             
                 end
                 h = floor(h/2);
            end 
            b =a;
        end
        
        function z =  less(~, a,b)
        if(a<b)
             z= 1;
        else
             z = 0;
        end
        end
    end
end