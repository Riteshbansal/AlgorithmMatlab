function [x ,y,z] = circularshift(x ,y, z)

temp = z;
z =y;
y= x;
x =temp;
end