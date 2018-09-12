classdef Graph<handle
   
    properties
        V
        E
        adj
    end
    
    
    methods
        function obj  = Graph(filename)
           
            fileID = fopen(filename,'r');
            formatSpec = '%d %d';

            A = textscan(fileID,formatSpec);
            fclose(fileID);
            vetices = A{1,1}(1);
            edge = A{1,1}(2);
            
            vetices_arr = A{1,1};
            edge_arr = A{1,2};
            
            obj.V = vetices;
            obj.E =0;
            obj.adj = cell(1, vetices);
            
            length = numel(obj.adj);
            for a = 1:1:length
               obj.adj{a} = Bag; 
            end
            
            for b = 1:1:edge
                v = vetices_arr(b+2);
                w = edge_arr(b+2);
                obj.addEdge(v+1,w+1);
            end
            
        end
        
        
        function vertice = Vert(obj)
        vertice = obj.V;
        end
        
        
        function edge = Edg(obj)
        edge = obj.E;
        end
        
        
        function addEdge(obj , v ,w)
        obj.adj{v}.add(w);
        obj.adj{w}.add(v);
        obj.E = obj.E +1;
        end
         
        
        function vertx_sur = adj_fun(obj,v)
            x= obj.adj{v};
            vertx_sur = x.iterable;
        end
        
        function path = shortest(obj, startpoint, endpoint ,arr,bag)
            
            arr = [arr,startpoint];
            vertx_sur = obj.adj_fun(startpoint);
        if(numel(vertx_sur)==0)
            
        else
            length = numel(vertx_sur);
            for a = 1:1:length
                vicpoint = vertx_sur{a};
                if(vicpoint ==endpoint)
                path1 = [arr, vicpoint];
                bag.add(path1);
                else
                    len_arr = numel(arr);
                    
                    temp = 0;
                   for i = 1:1:len_arr-1 
                        if(vicpoint == arr(i))
                            temp = 1;
                        end
                   end
                    
                    if( (temp==0))
                    bag = obj.shortest(vicpoint, endpoint,arr,bag);
                    end
                    
                end
            end
            
        end
            path = bag; 
        end
        
        function allpaths = allpaths(obj, startpoint, endpoint)
            arr = [];
            allpath = Bag;
            
            allpaths = obj.shortest(startpoint,endpoint,arr,allpath);
        
        end
    end
    
end