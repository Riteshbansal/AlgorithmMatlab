classdef QuickFind<handle
      
    properties
       arr 
    end
    
    
    methods
        function obj = QuickFind(N)
            obj.arr = zeros(1,N);
            
            for a = 1:1:N
            obj.arr(a) = a;
            end
            
        end
       
        
        function bool = connected(obj, p,q)
            bool = false;
            if(obj.arr(p) == obj.arr(q))
            bool = true;
            end
        end
        
        
        function union(obj , p, q)
           pid = obj.arr(p);
           qid = obj.arr(q);
            N = numel(obj.arr);
            for a = 1:1:N
                if(obj.arr(a) == pid)
                    obj.arr(a) = qid;
                end
            end
        end
        
    end

end