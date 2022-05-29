%Update fuzzy logic function
%parameters structure
% inputs * rules * 3 - input parameters
% output * rules * 3 - output parameters
% rules_amount*5 - rules parameters
function parameters = initiate_objects(inputs, rules_inout, outputs, obj_amount, rules, meas, speciesData)
    parameters = ones(obj_amount, (inputs+outputs)*rules_inout*3 + rules*5);
    for z =1:obj_amount
        %input
        x_min = min(meas(:, 1));
        x_max = max(meas(:, 1));
        for j = 0:inputs-1
            for k = 0:rules_inout-1
                    centre = rand()*(x_max-x_min) + x_min;
                    parameters(z, j*rules_inout*3+k*3+1+0) =  (x_min*0.9) + rand()*(centre-(x_min*0.9));
                    parameters(z, j*rules_inout*3+k*3+1+1) =  centre;
                    parameters(z, j*rules_inout*3+k*3+1+2) =  (centre) + rand()*(x_max*1.1-centre);
            end
        end
    
        %output
        x_min = min(speciesData(:, 1));
        x_max = max(speciesData(:, 1));
        for j = 0:outputs-1
            for k = 0:rules_inout-1
                centre = rand()*(x_max-x_min) + x_min;
                (j+inputs)*rules_inout*3+k*3+0+1
                parameters(z, (j+inputs)*rules_inout*3+k*3+0+1) =  (x_min*0.9) + rand()*(centre-(x_min*0.9));
                parameters(z, (j+inputs)*rules_inout*3+k*3+1+1) =  centre;
                parameters(z, (j+inputs)*rules_inout*3+k*3+2+1) =  (centre) + rand()*(x_max*1.1-centre);
            end
        end
    
        delta = (outputs+inputs)*rules_inout*3;
        for i = 0:rules-1
            delta+i*5+0+1   
            parameters(z, delta+i*4+0+1) = randi([1 rules_inout],1,1);
            parameters(z, delta+i*4+1+1) = randi([1 rules_inout],1,1);
            parameters(z, delta+i*4+2+1) = randi([1 rules_inout],1,1);
            parameters(z, delta+i*4+3+1) = randi([1 rules_inout],1,1);
            parameters(z, delta+i*4+4+1) = randi([1 rules_inout],1,1);
        end
    end
end