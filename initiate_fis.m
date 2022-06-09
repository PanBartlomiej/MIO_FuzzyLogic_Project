%initialize fis range and inputs amount
function fis = initiate_fis(inputs, outputs, meas, speciesData, fis)
    for i=1:inputs
        fis.Inputs(i).Range = [min(meas(:, i)) max(meas(:, i))];
    end
    for j=1:outputs
        fis.Outputs(j).Range = [min(speciesData(:, j)) max(speciesData(:, j))];
    end
end