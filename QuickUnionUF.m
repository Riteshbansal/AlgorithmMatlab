classdef QuickUnionUF < handle
    
    properties
       arr 
    end
    
    
    methods
        function obj = QuickUnionUF(N)
            obj.arr = zeros(1,N);
            
            for a = 1:1:N
            obj.arr(a) = a;
            end
            
        end
        
        function bool = connected(obj, p , q)
            bool = false;
            if(obj.root(p) == (obj.root(q)))
            bool = true;
            end
        end
        
        function union (obj, p, q)
           pid = obj.root(p);
           qid = obj.root(q);
           obj.arr(pid) = qid;
        end
        
    end
    
    methods(Access  = private)
        function root_i = root(obj, n)
            
            while(n ~= obj.arr(n))
                n = obj.arr(n);
                
            end
            root_i = n;
        end
    end
end