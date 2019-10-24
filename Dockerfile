FROM tensorflow/tensorflow:latest-gpu-py3-jupyter

RUN pip install Pillow \
    && pip install tensorflow-hub \
    && apt-get update && apt-get install -y \
    wget \
    && rm -rf /var/lib/apt/lists/*