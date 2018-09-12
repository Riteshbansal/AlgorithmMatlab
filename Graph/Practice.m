% 
% b =[1,2,3,4,4];
% d = [b, 7];
% c = [45,555,5556];
% a = {b, c};
% numel(a)
% 


% a = Bag;
% a.add(5);
% 

g = Graph('tinyG.txt');
x =g.adj_fun(1);
path = g.allpaths(1,13);
c = path.iterable;
length = numel(c);
for i = 1: 1: length
   disp(c{i}); 
end
% x
% 

% fileID = fopen('tinyG.txt','r');
% formatSpec = '%d %d';
% sizeA = [2 Inf];
% 
% A = textscan(fileID,formatSpec);
% fclose(fileID);
% A;
% z =A{1,2}(1);
% z
% z= numel(A);

% tline = fgetl(fileID);
% fprintf('----%s---\n',tline)
% % fclose(fileID);