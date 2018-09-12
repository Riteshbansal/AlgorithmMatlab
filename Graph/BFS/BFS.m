classdef BFS<handle
   properties
      
       marked
       edgeTo
       source
   end
    
   
   methods
   
       function obj = BFS(graph, source)
           obj.marked = zeros(1,graph.Vert);
           obj.edgeTo = zeros(1,graph.Vert);
           obj.source = source;
           obj.bfs(graph,source);
       end
       
       function bfs(obj, graph, vertex)
       obj.marked(vertex) = true;
       que = Queue;
       que.enque(vertex);
       while(~que.isemptyqueue)
           v = que.dequeue;
       sur_ver  = graph.adj_fun(v);
       length = numel(sur_ver);
       for i = 1:1:length
           w = sur_ver{i};
           if(~obj.marked(w))
               obj.edgeTo(w) = vertex;
               obj.marked(w) = true;
               que.enque(w);
           end
       end
       end
       
       
       end
       
       function path = pathTo(obj, vertex_to)
           bag = Bag;
           y = vertex_to;
           length = numel(obj.edgeTo);
           for i = 1:1:length
               if(y ~= obj.source && y ~=0)
               bag.add(y);
               end
               if(y~=0)
               y = obj.edgeTo(y);
               end
%                if(y==0)
%                i = length;
%                end
           end
           path = bag;
       end
       
   end
   
end