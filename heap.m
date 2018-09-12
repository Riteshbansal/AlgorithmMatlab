classdef heap < handle
    properties
        heap_queue
        size
    end
        methods
            
            
            function obj = heap()
                obj.heap_queue = cell(1,10);
                obj.size = 0;
            end
            
            
            function swim (obj , k)
                i = floor(k/2);
                while(k > 1 && (obj.heap_queue{i} < obj.heap_queue{k}))
                
                    temp = (obj.heap_queue{i});
                    obj.heap_queue{i} = obj.heap_queue{k};
                    obj.heap_queue{k} = temp;
                    
%                     k = i;
%                      i = floor(k/2); 
                end
                
                
            end
            
            function insert(obj , k)
%                 siz = obj.size;
                obj.size = obj.size +1;
                obj.heap_queue{obj.size}=k;
                obj.swim(obj.size);
            end
            
            function sink(obj, k)
                while( 2*k <= numel(obj.heap_queue))
                j = 2*k;
                    if(obj.heap_queue{j} <  (obj.heap_queue{j+1}))
                        j = j+1;
                    end
                if(obj.heap_queue{k} < obj.heap_queue{j})
                    temp = (obj.heap_queue{k});
                    obj.heap_queue{k} = obj.heap_queue{j};
                    obj.heap_queue{j} = temp;
                else
                    break;
                end
                k = j;
                end
            end
            
            function max = del_max(obj)
                    max_node = obj.heap_queue{1};
                    
                     obj.heap_queue{1} = obj.heap_queue{obj.size};
                    obj.heap_queue{obj.size} = [];
                    obj.size = obj.size-1;
                    obj.sink(1);
                    max  = max_node;
            end
            
             function s = all_elements(obj)
                     if(obj.size ==0)
                           fprintf('Stack empty, therefore no top value');
                     s =[];
                     else
                
                         for a = 1:1:obj.size
                            disp(obj.heap_queue{a});
                         end
                    end
             end
             
             function a = HeapSort(~, a)
                 N = numel(a);
                 
                 for i = floor(N/2):-1:1;
                    a =   heap.sink_array(a,i,N);
                 end
                 
                 while(N>1)
                 a = heap.exchange(a, 1, N);
                 N = N-1;
                 a = heap.sink_array(a, 1, N);
                 end
             end
            
        end
        methods(Static)
            function b = sink_array(a, k, N)
                
                while( 2*k <=N)
                j = 2*k;
                    if(2*k +1<= N && (a{j} <  (a{j+1})))
                        j = j+1;
                    end
                if(a{k} < a{j})
                    temp = (a{k});
                    a{k} = a{j};
                    a{j} = temp;
                else
                    break;
                end
                k = j;
                end
                disp(a);
                b=a;
            end
            
            function b = exchange ( a, k,N)
                    max_node = a{k};
                    
                     a{k} = a{N};                    
                   
                    a{N}  = max_node;
                    disp(a);
                    b =a;
            end
        end
end