# Hand Digit Recognition - MATLAB Project

## 📌 Project Overview
This project implements a **Handwritten Digit Recognition** system using MATLAB.
It uses the **K-Nearest Neighbors (KNN)** algorithm to classify digits from 0 to 9.

## 🧠 How It Works
1. Loads MATLAB's built-in handwritten digit dataset
2. Converts images into feature vectors (28×28 = 784 features)
3. Trains a KNN classifier (K=3)
4. Predicts labels on test images
5. Displays accuracy, sample predictions, and a confusion matrix

## 📁 Files
| File | Description |
|------|-------------|
| `main.m` | Main script — run this to start the project |
| `visualize_results.m` | Displays 20 sample predictions with labels |
| `plot_confusion.m` | Plots a confusion matrix of results |
| `README.md` | Project documentation |

## ▶️ How to Run
1. Open MATLAB
2. Set the project folder as your **Current Folder**
3. Run `main.m` in the Command Window:
```matlab
main
```
4. Two figures will appear:
   - **Sample Predictions** (green = correct, red = wrong)
   - **Confusion Matrix**

## 📊 Expected Output
- Accuracy: ~95%+ on test data
- Visual grid of 20 predicted digit images
- Confusion matrix showing per-digit performance

## 🛠️ Requirements
- MATLAB R2018b or later
- Deep Learning Toolbox (for `digitTrainCellArrayData`)
- Statistics and Machine Learning Toolbox (for `fitcknn`)

## 👤 Author
MD TANVIR AHMED BHUIYAN
GitHub:   https://github.com/tanvir-ahmed03
