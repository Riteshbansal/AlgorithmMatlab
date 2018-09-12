classdef listimpl < handle
   
    properties(Access = private)
        
    node
    length;
    end
    
    methods
        
        function obj = listimpl()
            
            obj.node = Node.empty;
            obj.length = 0;
        end
        
        function bool = isEmpty(obj)
            bool = false;
            if(isempty(obj.node))
              bool = true;
             end
        end
        
        function bool = add(obj, item) 
            bool = false;
            
            if(isempty(obj.node))
                obj.node = Node(item, obj.node);
                bool = true;
            else
               temp = obj.node;
               while(~(isempty(temp.next)))
               temp = temp.next;
               end
               temp.next = Node(item,Node.empty);   
               bool = true;
            end
            obj.length = obj.length +1;
        end
        
        
        
       function bool = add_at_index(obj,index, item) 
            bool = false;
            if(isempty(obj.node))
                fprintf('List is empty,Element added at first\n');
                obj.node = Node(item, obj.node);
                bool = true;
            else
                
                if(index>obj.length)
                    fprintf('Lists lenfgth is less then given index\n');
                else
                        temp_length = 1;
                     temp = obj.node;
                        while(temp_length <index)
                            temp = temp.next;
                            temp_length = temp_length+1;
                        end
               
                    temp.item = item;   
                    bool = true;
                end
            end
        end
        
        function clear(obj)
        obj.node = Node.empty;
        obj.length = 0;
        end
        
        function data= getFirst(obj)
            
            if(isempty(obj.node))
                fprintf('List is empty\n');
                data = NaN;
            else
               data =  obj.node.item;
            end
        end
        
        function bool = contains(obj, item)
            bool = false;
             if(isempty(obj.node))
                fprintf('List is empty\n');
             else
                temp = obj.node;
                i=0;
               while(i<=obj.length)
                   z = temp.item;
                   if(temp.item == item)
                       bool = true;
                       break;
                   end
                 temp = temp.next;
                 i=i+1;
               
               end  
             end
        end
        
        function allElements = show_all(obj)
            allElements = zeros(obj.length,1);
            temp = obj.node;
            for a =1:1:obj.length
                
            allElements(a) = temp.item;
            temp = temp.next;
            end
        end
        
    end
    
end