classdef Bag < handle
    properties 
        
       first 
       size
    end
    methods
        function obj = Bag()
            obj.first = Node.empty;
            obj.size = 0;
        end
        
        function add(obj, item)
            oldnode = obj.first;
            obj.first = Node.empty;
            obj.first = Node(item, oldnode); 
            obj.size = obj.size+1;
        end
        function set.first(node,next)
            node.first=next;
       end
        
       function fir=get.first(node)
            fir=node.first;
       end
       
       function allElements = iterable(obj)
           
           allElements = cell(1,obj.size);
            temp = obj.first;
            
            for a =1:1:obj.size
                
            allElements{a} = temp.item;
            temp = temp.next;
            end 
       end
    end
end