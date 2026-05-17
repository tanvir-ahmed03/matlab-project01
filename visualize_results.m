function visualize_results(xTest, YTest, YPred)
% VISUALIZE_RESULTS displays sample digit images with predicted labels
%
% Inputs:
%   xTest  - cell array of test images
%   YTest  - true labels
%   YPred  - predicted labels

    figure('Name', 'Digit Recognition - Sample Predictions', ...
           'NumberTitle', 'off', 'Position', [100, 100, 900, 600]);

    numSamples = 20; % show 20 random samples
    indices = randperm(numel(xTest), numSamples);

    for i = 1:numSamples
        subplot(4, 5, i);
        img = xTest{indices(i)};
        imshow(img, []);

        actual    = YTest(indices(i));
        predicted = YPred(indices(i));

        if actual == predicted
            titleColor = 'green';
            status = '✓';
        else
            titleColor = 'red';
            status = '✗';
        end

        title(sprintf('%s Pred:%d True:%d', status, predicted, actual), ...
              'Color', titleColor, 'FontSize', 8, 'FontWeight', 'bold');
    end

    sgtitle('Sample Predictions (Green = Correct, Red = Wrong)', ...
            'FontSize', 13, 'FontWeight', 'bold');
end
