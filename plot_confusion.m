function plot_confusion(YTest, YPred)
% PLOT_CONFUSION displays a confusion matrix for the digit predictions
%
% Inputs:
%   YTest - true labels (0-9)
%   YPred - predicted labels (0-9)

    figure('Name', 'Confusion Matrix', ...
           'NumberTitle', 'off', 'Position', [200, 200, 600, 500]);

    % Build confusion matrix
    numClasses = 10;
    cm = zeros(numClasses, numClasses);

    for i = 1:numel(YTest)
        row = YTest(i) + 1;
        col = YPred(i) + 1;
        cm(row, col) = cm(row, col) + 1;
    end

    % Plot
    imagesc(cm);
    colorbar;
    colormap('Blues');

    xlabel('Predicted Label', 'FontSize', 12);
    ylabel('True Label',      'FontSize', 12);
    title('Confusion Matrix - Digit Recognition', ...
          'FontSize', 14, 'FontWeight', 'bold');

    % Set tick labels 0-9
    set(gca, 'XTick', 1:10, 'XTickLabel', 0:9);
    set(gca, 'YTick', 1:10, 'YTickLabel', 0:9);

    % Add numbers inside cells
    for r = 1:numClasses
        for c = 1:numClasses
            text(c, r, num2str(cm(r,c)), ...
                 'HorizontalAlignment', 'center', ...
                 'FontSize', 9, 'FontWeight', 'bold', 'Color', 'white');
        end
    end
end
