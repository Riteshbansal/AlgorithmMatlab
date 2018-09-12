prompt = 'input no.';
x = input(prompt);

str = num2str(x);
sum = 0;
for a= 1:1:length(str);
   sum = sum + str2double(str(a));
    
end
disp(sum);