%Calculate how much iris, fis network match
function correct=calculateCorrectness(inputData, fis, correctAnswer)
    correct = 0
    for i = 1:length(inputData)
        inputData(i, :)
        k = evalfis(fis, inputData(i, :));
        correct = correct + (evalfis(fis, inputData(i, :)) == correctAnswer);
    end
    correct = correct/length(inputData);
end