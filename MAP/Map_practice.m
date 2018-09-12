keySet =   {3, 3, 4, 3};
valueSet = [327.2, 368.2, 197.6, 178.4];
mapObj = containers.Map(keySet,valueSet);
map_new = containers.Map('KeyType','int32', 'ValueType', 'int32');
% keys(mapObj)
% values(mapObj)
a = mapObj(3);

map_new(2)=777;
keys(map_new)