classdef pQueue < handle
   
     properties(Access = private)
        pQue_new 
        size 
        
    end
    methods
        function obj = pQueue()
        obj.pQue_new = cell(1,10);
        obj.size = 0;
        end
        
        function s = size_pQueue(obj)
            if(obj.size == 0)
                fprintf('Stack is empty');
                s =obj.size;
            else
                fprintf('Size of Stack is %d' , obj.size);
                s = obj.size+1;
            end
        end
        
        function add(obj, e) 
            obj.size = obj.size +1;
            obj.pQue_new{obj.size} = e;            
        end
        
        
        
        function s =  delMax(obj)
            if(obj.size ==0)
                fprintf('Pq  empty, there fore no deletion');
                s = [];
            else
                s = obj.pQue_new{obj.size};
                [max,  pos] = obj.max_value;
                
                s = max;
                obj.pQue_new{pos} = [];
                obj.size = obj.size -1;
            end
        end
        
        function [max, pos]= max_value(obj)
            z = numel(obj.pQue_new);
            max = obj.pQue_new{1};
            pos = 0;
            for a = 1:1:z
                if(max < obj.pQue_new{a})
                max = obj.pQue_new{a};
                pos = a;
                end
            end
            
        end
        
        function s = all_elements(obj)
            if(obj.size ==0)
                fprintf('Stack empty, therefore no top value');
                s =[];
            else
                
                for a = 1:1:obj.size
                disp(obj.pQue_new{a});
                end
            end
        end
        
        function item = peek(obj)
             if(obj.size ==0)
                fprintf('Stack empty, therefore no top value');
                item =[];
            else
                item = obj.pQue_new{obj.size};
            end
        end
    end
    
    

    
end