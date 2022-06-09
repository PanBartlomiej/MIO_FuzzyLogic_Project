%Update fuzzy logic function
%parameters structure
% inputs * rules * 3 - input parameters
% output * rules * 3 - output parameters
% rules_amount*5 - rules parameters
function fis=update_rules(fis, parameters, inputs, rules, outputs, rules_amount)
        for j = 0:inputs-1
            for k = 0:rules-1
                fis.Inputs(j+1).MembershipFunctions(k+1).Parameters = ...
                        [parameters(j*rules*3+k*3+0+1), ...
                         parameters(j*rules*3+k*3+1+1), ... 
                         parameters(j*rules*3+k*3+2+1)];
            end
        end
        for j = 0:outputs-1
            for k = 0:rules-1
                for l=2:-1:0
                    fis.Outputs(j+1).MembershipFunctions(k+1).Parameters =...
                        [parameters((j+inputs)*rules*3+k*3+0+1), ...
                         parameters((j+inputs)*rules*3+k*3+1+1), ... 
                         parameters((j+inputs)*rules*3+k*3+2+1)];
                end
            end
        end
        r = zeros(rules_amount, 7);
        delta = (outputs+inputs)*rules*3;
        for i = 0:rules_amount-1
            for j = 0:4
                r(i+1, j+1) = parameters(delta+i*4+j+1);
            end
            r(i+1, 6) = 0.1;
            r(i+1, 7) = 1;
        end
        fuzzyRules10 = fisrule(r, 4);
        fuzzyRules10 = update(fuzzyRules10,fis);
        fis.Rules = fuzzyRules10;
end