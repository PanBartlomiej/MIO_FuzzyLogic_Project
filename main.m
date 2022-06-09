clc; clf; 
clear all;

load fisheriris.mat;
fis=readfis('iris.fis');
speciesData = irisSpeciesToData(species);

outer_loop = 5;
inputs = 4;
rules_inout = 3;
outputs = 1;
obj_amount = 10;
rules = 10;
fis = initiate_fis(inputs, outputs, meas, speciesData, fis);
objects = initiate_objects(inputs, rules_inout, outputs, obj_amount, rules, meas, speciesData);
%for i = 1:outer_loop()
%    for j = 1:obj_amount
%        update_rules(fis, objects(j, :), inputs, rules, outputs)
%    end
%end

fis = update_rules(fis, objects(1, :), inputs, rules_inout, outputs, rules);
result = calculateCorrectness(meas, fis, speciesData);