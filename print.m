
%%print plot of iris
function print(meas, species)
    subplot(3, 2, 1);
    gscatter(meas(:,1), meas(:,2), species,'rgb','osd');
    xlabel('Sepal length');
    ylabel('Sepal width');

    subplot(3, 2, 2);
    gscatter(meas(:,1), meas(:,3), species,'rgb','osd');
    xlabel('Sepal length');
    ylabel('Sepal width');

    subplot(3, 2, 3);
    gscatter(meas(:,1), meas(:,4), species,'rgb','osd');
    xlabel('Sepal length');
    ylabel('Sepal width');

    subplot(3, 2, 4);
    gscatter(meas(:,2), meas(:,3), species,'rgb','osd');
    xlabel('Sepal length');
    ylabel('Sepal width');

    subplot(3, 2, 5);
    gscatter(meas(:,2), meas(:,4), species,'rgb','osd');
    xlabel('Sepal length');
    ylabel('Sepal width');

    subplot(3, 2, 6);
    gscatter(meas(:,3), meas(:,4), species,'rgb','osd');
    xlabel('Sepal length');
    ylabel('Sepal width');
end