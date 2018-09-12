classdef SomeSimpleObject < handle
% SomeSimpleObject defines an Object that has one property

properties
    property=0;
end

methods
    function SimpleObj=SomeSimpleObject()
        if nargin==0
            SimpleObj.property=1;
        end
    end
end

end