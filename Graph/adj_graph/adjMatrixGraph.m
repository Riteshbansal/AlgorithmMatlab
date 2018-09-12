classdef adjMatrixGraph < handle
   properties
        V
        E
        adj
   end
    
    methods
        function obj  = adjMatrixGraph(filename)
           
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
            obj.adj = zeros(vetices, vetices);
            
           
            
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
            if(~obj.adj(v,w))
                    obj.adj(v,w)=1;
                    obj.adj(w,v)=1;
                 obj.E = obj.E +1;
            end
        
        end
         
        
        function vertx_sur = adj_fun(obj,v)
            x= obj.adj{v};
            vertx_sur = x.iterable;
        end
        
    end
end