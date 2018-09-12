classdef SimpleHandleClass < handle
%    properties
%       Color
%    end
   methods
%       function obj = SimpleHandleClass(c)
%          if nargin > 0
%             obj.Color = c;
%          end
%       end
      
      function b =change(~, a)
          a
      a =[0 0 0 1];
      b =a;
      end
   end
end

