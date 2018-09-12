g = Graph('tinyG.txt');
df = DFS(g , 1);
b = df.pathTo(6);
c = b.iterable;
length = numel(c);
for i = 1: 1: length
   disp(c{i}); 
end