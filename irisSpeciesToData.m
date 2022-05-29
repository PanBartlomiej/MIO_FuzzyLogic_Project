function result=irisSpeciesToData(species)
    result = zeros(length(species), 1);
    for i=1:length(species)
        if(strcmp(species(i), 'setosa'))
            result(i) = 1;
        elseif(strcmp(species(i), 'versicolor'))
            result(i) = 2;
        elseif(strcmp(species(i), 'virginica'))
            result(i) = 3;
        else
            result(i) = -1;
        end
    end
end