function result = dijkstra_two_stack(s)


%methof for increasind length of cell
% c = cell(1,1);
% d = cell(1,5);
% d{1} = 5;
% d{2}= 6;
% c = d;
% c

operator = stack_impl;
value = stack_impl;

 k = numel(s);
for a = 1:1:k
    
    b = s(a);
    if(b == '(')
        
    elseif(b == '+')
        operator.push(b);
    elseif(b == '-')
        operator.push(b);
    elseif(b == '*')
        operator.push(b);
    elseif(b == '/')
        operator.push(b);
    elseif(strcmp(b,'sqrt'))
        operator.push(b);
    elseif(b == ')')
    
        op = operator.pop;
        v = str2double(value.pop);
        if(op == '+')
        v = v + str2double(value.pop);
        elseif(op == '-')
        v = v - str2double(value.pop);
        elseif(op == '*')
        v = v * (str2double(value.pop));
        elseif(op == '/')
        v = v / (str2double(value.pop));
        elseif(strcmp(op,'sqrt'))
        v = sqrt( str2double(value.pop));
        end
        value.push(num2str(v));
    elseif(b>= '0' && b<='9')
        value.push(b);
    end
   
end
result = value.pop;

end