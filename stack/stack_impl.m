classdef stack_impl<handle
   
    properties(Access = private)
        stack_new 
        size 
        
    end
    methods
        function obj = stack_impl()
        obj.stack_new = cell(1,10);
        obj.size = 0;
        end
        
        function s = size_stack(obj)
            if(obj.size == 0)
                fprintf('Stack is empty');
                s =obj.size;
            else
                fprintf('Size of Stack is %d' , obj.size);
                s = obj.size+1;
            end
        end
        
        function push(obj, e)
            obj.size = obj.size +1;
            obj.stack_new{obj.size} = e;            
        end
        
        
        
        function s =  pop(obj)
            if(obj.size ==0)
                fprintf('Stack empty, there fore no pop');
                s = [];
            else
                s = obj.stack_new{obj.size};
                obj.stack_new{obj.size} = [];
                obj.size = obj.size -1;
            end
        end
        
       function s = top(obj)
            if(obj.size ==0)
                fprintf('Stack empty, therefore no top value');
                s =[];
            else
                s = obj.stack_new{obj.size};
            end
        end
        
        function s = all_elements(obj)
            if(obj.size ==0)
                fprintf('Stack empty, therefore no top value');
                s =[];
            else
                
                for a = 1:1:obj.size
                disp(obj.stack_new{a});
                end
            end
        end
        
        function item = peek(obj)
             if(obj.size ==0)
                fprintf('Stack empty, therefore no top value');
                item =[];
            else
                item = obj.stack_new{obj.size};
            end
        end
    end
    
    
end