%Calculate how much iris, fis network match
function correct=calculateCorrectness(inputData, fis, correctAnswer)
    correct = 0;
    for i = 1:length(inputData)
        t = evalfis(fis, inputData(i, :));
        correct = correct + (t == correctAnswer);
    end
    correct = correct/length(inputData);
end