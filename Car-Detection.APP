import gradio as gr
from ultralytics import YOLO
import cv2

# Load your trained model (update the path if needed)
model = YOLO("weights/best-2.pt")


def detect_cars(image):
    # Run YOLO inference
    results = model(image)[0]

    # Plot results on the image
    annotated_frame = results.plot()  # returns a numpy array (image with boxes)

    # Convert BGR to RGB just in case
    annotated_frame = cv2.cvtColor(annotated_frame, cv2.COLOR_BGR2RGB)

    return annotated_frame

demo = gr.Interface(
    fn=detect_cars,
    inputs=gr.Image(type="numpy"),
    outputs=gr.Image(type="numpy"),
    title="Car Detection with YOLOv8",
    description="Upload an image containing cars and the model will detect them."
)

if __name__ == "__main__":
    demo.launch()
