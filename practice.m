%Quick find
% t = QuickFind(100);
% y = t.connected(1,11);
% t.union(1,11);
% % y = t.connected(1,11);

%QuickUnion
% t1 = QuickUnionUF(100);
% y1 = t1.connected(1,11);
% t1.union(1,11);
% % y1 = t1.connected(1,11);

%mergesort
% 
 a = zeros(1,1);
 
 i =0;
for b =10:-1:1
    i = i+1;
a(i) = 1;
end
hi = numel(a);
% a = shuffle(a);
% 
tic
% a = shuffle(a);
a= sort_define(a,1,hi);
toc
%  fid=fopen('MyFile.txt','w');
%  fprintf(fid, '%f \n', a');
% aux = zeros(1, 1);
% c = merge_class;
% if(mod(hi,2)==0)
%     mid = hi/2;
% else
%     mid = (hi-1)/2;
% end
% tic
% a = c.sort_pr(a,aux, 1,hi);
% toc
