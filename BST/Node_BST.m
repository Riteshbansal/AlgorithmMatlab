classdef Node_BST<handle
   properties(SetAccess = public , GetAccess = public)
       
   key
   val
   left 
   right
   count   
   
   end
    
   methods
       function node = Node_BST(key, value)
           node.key = key;
           node.val = value;
           node.left = Node_BST.empty;
           node.right = Node_BST.empty;
           node.count = 0;
       end
    
       
       function set.key(node,next)
            node.key=next;
       end
        
       function node=get.key(node)
            node=node.key;
       end
       
       function set.val(node,next)
            node.val=next;
       end
        
       function node=get.val(node)
            node=node.val;
       end
       
       function set.left(node,next)
            node.left=next;
       end
        
       function node=get.left(node)
            node=node.left;
       end
       function set.right(node,next)
            node.right=next;
       end
        
       function node=get.right(node)
            node=node.right;
       end
       function set.count(node,next)
            node.count=next;
       end
        
       function node=get.count(node)
            node=node.count;
       end
   end
    
end