classdef Node< handle
    properties (SetAccess = public , GetAccess = public)
       item;
       next;
    end
    methods
   
    function node=Node(newData,n)
        
           node.item=newData;
           node.next = n;
     
    end
    
    function set.next(node,next)
            node.next=next;
    end
        
    function node=get.next(node)
            node=node.next;
    end
        
    
    function set.item(node,newData)
            node.item=newData;
    end
        
        
    function value=get.item(node)
            value=node.item;
    end
        
    
    end
end