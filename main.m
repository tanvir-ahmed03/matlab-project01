% =========================================
% Hand Digit Recognition using KNN
% Author: MD TANVIR AHMED BHUIYAN
% Description: Recognizes handwritten digits
%              (0-9) using KNN classifier
% =========================================

clc;
clear;
close all;

fprintf('=== Hand Digit Recognition Project ===\n\n');

%% Step 1: Load the built-in digit dataset
fprintf('Step 1: Loading digit dataset...\n');
[xTrain, tTrain] = digitTrainCellArrayData();
[xTest,  tTest]  = digitTestCellArrayData();

% Convert cell array of images to feature matrix
numTrain = numel(xTrain);
numTest  = numel(xTest);
imgSize  = 28 * 28; % each image is 28x28 pixels

XTrain = zeros(numTrain, imgSize);
YTrain = zeros(numTrain, 1);

XTest  = zeros(numTest, imgSize);
YTest  = zeros(numTest, 1);

for i = 1:numTrain
    XTrain(i, :) = xTrain{i}(:)';
    [~, label]   = max(tTrain{i});
    YTrain(i)    = label - 1; % labels 0-9
end

for i = 1:numTest
    XTest(i, :) = xTest{i}(:)';
    [~, label]  = max(tTest{i});
    YTest(i)    = label - 1;
end

fprintf('  Training samples: %d\n', numTrain);
fprintf('  Testing  samples: %d\n\n', numTest);

%% Step 2: Train KNN Classifier
fprintf('Step 2: Training KNN Classifier (K=3)...\n');
K = 3;
knnModel = fitcknn(XTrain, YTrain, 'NumNeighbors', K);
fprintf('  KNN model trained successfully!\n\n');

%% Step 3: Predict on Test Data
fprintf('Step 3: Running predictions on test data...\n');
YPred = predict(knnModel, XTest);

%% Step 4: Calculate Accuracy
accuracy = sum(YPred == YTest) / numel(YTest) * 100;
fprintf('  Accuracy: %.2f%%\n\n', accuracy);

%% Step 5: Show Results
visualize_results(xTest, YTest, YPred);
plot_confusion(YTest, YPred);

fprintf('=== Done! Check the figures for results. ===\n');
