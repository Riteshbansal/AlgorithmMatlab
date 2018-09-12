function b = sort_define( a, strtpoint, endingpoint)
             h =ceil(numel(a) * 0.58);
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