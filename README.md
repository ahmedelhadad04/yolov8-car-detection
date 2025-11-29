# yolov8-car-detection
YOLOv8-based car detector trained on a custom Kaggle dataset in Google Colab
# YOLOv8 Car Detection (Custom Kaggle Dataset)

This repository contains a Google Colab notebook that trains a YOLOv8 model to detect cars using a custom dataset from Kaggle.

## Project Overview

- **Model**: YOLOv8n (nano)
- **Task**: Single-class car detection (`car`)
- **Framework**: [Ultralytics YOLOv8](https://github.com/ultralytics/ultralytics)
- **Environment**: Google Colab
- **Dataset**: [Car Detection and Tracking Dataset](https://www.kaggle.com/datasets/amitkumargurjar/car-detection-and-tracking-dataset)

The notebook covers:
1. Installing dependencies and Ultralytics YOLO
2. Downloading the dataset via Kaggle/KaggleHub
3. Creating a custom dataset YAML file
4. Training YOLOv8 on the car dataset
5. Validating and running inference on test images

## Files

- `car-detection-yolov8-colab.ipynb` – main Colab notebook (training + inference)
- `requirements.txt` – Python dependencies
- `results/` – sample detection outputs (optional)

## How to Use

1. Open the notebook in Google Colab:
   - Click on the notebook file and select "Open in Colab" (or upload it into your own Colab)
2. Update your Kaggle API key in the notebook environment (do **not** commit it to GitHub).
3. Run the cells to:
   - Download the dataset
   - Train the YOLOv8 model
   - Evaluate and visualize predictions

## Future Work

- Add a simple web UI for uploading your own images and running car detection.
- Experiment with larger YOLOv8 variants (e.g. `yolov8s.pt`) and longer training.
