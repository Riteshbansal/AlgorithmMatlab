classdef Bag < handle
    properties 
        
       first 
        
    end
    methods
        function obj = Bag()
            obj.first = Node.empty;
            
        end
        
        function add(obj, item)
        oldnode = obj.first;
        obj.first = Node.empty;
        obj.first = Node(item, oldnode); 
        end
    end
end