classdef LinkedStackOfStrings<handle
    
    properties(Access = private)
        
    first
    length;
    end
    
    methods
        
        function obj = LinkedStackOfStrings()
            
            obj.first = Node.empty;
            obj.length = 0;
        end
        
        
         function push(obj, e)
            
            oldFirst  = obj.first;
            obj.first = Node(e,oldFirst);
            
         end
        
           function s =  pop(obj)
                 s = obj.first.item;
                obj.first = obj.first.next;
            
           end
        
           
    end
end