classdef WeightedQuickUnionUF < handle
    
    properties
       arr 
       size
    end
    
    
    methods
        function obj = QuickUnionUF(N)
            obj.arr = zeros(1,N);
            obj.size=zeros(1,N);
            for a = 1:1:N
            obj.arr(a) = a;
            obj.size(a) = 1;
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
           
           if(obj.size(pid)< obj.size(qid))
           obj.arr(pid) = qid;
           obj.size(qid) = obj.size(pid) + obj.size(qid);
           else
               obj.arr(qid) = pid;
               obj.size(pid) = obj.size(pid) + obj.size(qid);
           end
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