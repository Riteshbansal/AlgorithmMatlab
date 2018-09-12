classdef BST < handle
    
   properties
       
      root 
      current_node;
       
   end
   
   methods
       function BST_obj= BST()
           BST_obj.root = Node_BST.empty;
       end
        
       function rank_node = rank(obj, key)
       rank_node = rnk_fun(key, obj.root);
       end
       
       function rank_node = rnk_fun(obj,key,node)
       
           if(isempty(node))
           rank_node = 0;
           else
                if(key == node.key)
                   rank_node = obj.size_define(node.left);
               elseif(key <= node.key)
                   rank_node = obj.rnk_fun(key, node.left);
               elseif(key >= node.key)
                   rank_node = 1 +obj.size_define(node.left) +obj.rnk_fun(key, node.right);
                end
           end
       end
       
       
       function value = get(obj, key)
            x = obj.root;
       
            value = [];

           while(~isempty(x))
            if(key ==(x.key))
                value = x.val;
            break;
            elseif(key <=(x.key))
                x = x.left;
            elseif(key >=(x.key))
                x = x.right;
            end
           end
       end 
       
       function put(obj, key , value)
           obj.root = obj.put_add(obj.root, key,value);
       end
       
       function root = put_add(obj, node, key, val)
           if(isempty(node))
           obj.root = Node_BST(key,val);
           obj.current_node = obj.current_node;
           root = obj.root;
           else
               if(key == node.key)
                   node.val = val;
               elseif(key <= node.key)
                   node.left = obj.put_add(node.left, key,val);
               elseif(key >= node.key)
                   node.right = obj.put_add(node.right, key,val);
               end
               root = node;
           end
           root.count = 1 + obj.size_define(root.left) + obj.size_define(root.right);
       end
       
       function siz = size_define(~,node)
                if(isempty(node))
                    siz = 0;
                else
                    siz = node.count;
                end
       end
              
       function siz = size_all(obj)
               siz = obj.size_define(obj.root);
       end
       
       function show_all(obj)
           x = obj.root;
           while(~isempty(x))
            disp(x.val);
            x = x.left;
           end
           x = obj.root.right;
            while(~isempty(x))
            disp(x.val);
            x = x.right;
           end
       end
        
       function key = floor(obj, key)
           node = obj.floor_add(obj.root, key);
           if(isempty(node))
           key = NaN;
           else
           key = node.key;
           end
       end
        function node_out = floor_add(obj, node ,key)
           if(isempty(node))
           node_out = node;
           elseif( key == node.key)
           node_out = node;
           elseif( key <= node.key)
               node_out = obj.floor_add(node.left, key);
           elseif( key >= node.key)
               x= obj.floor_add(node.right, key);
               if(~isempty(x))
               node_out = x;
               else
                  node_out = node; 
               end
           end
        end
       
   end
   
end