classdef Queue < handle
   
     properties(Access = private)
        size 
        first 
        last
    end
    methods
        function obj = Queue()
        obj.first = Node.empty;
        obj.last = Node.empty;
        obj.size = 0;
        end
        
        function s = size_pQueue(obj)
            if(obj.size == 0)
                fprintf('Stack is empty');
                s =obj.size;
            else
                fprintf('Size of Stack is %d' , obj.size);
                s = obj.size+1;
            end
        end
        
        function enque(obj, e) 
            oldlast = obj.last;
            obj.last = Node(e,Node.empty);
             if(obj.isemptyqueue)
                    obj.first = obj.last;
             else
                 oldlast.next = obj.last;
             end
            
            obj.size = obj.size +1;
        end
        
        function empty =  isemptyqueue(obj)
            empty =false;
            if(isempty(obj.first))
            empty = true;
            end
        end
        
        function s =  dequeue(obj)
            if(obj.size ==0)
                fprintf('Pq  empty, there fore no deletion');
                s = [];
            else
                s = obj.first.item;
                obj.first = obj.first.next;
                if(obj.isemptyqueue)
                obj.last = Node.empty;
                end
                obj.size = obj.size -1;
            end
        end
        
        
        
        function s = all_elements(obj)
            allElements = zeros(1,obj.size);
            temp = obj.first;
            if(obj.size ==0)
                fprintf('Stack empty, therefore no top value');
                s =[];
            else
                
                for a = 1:1:obj.size
                 allElements(a) = temp.item;
                 temp = temp.next;
                end
                s = allElements;
            end
        end
        
        
    end
    
    

    
end