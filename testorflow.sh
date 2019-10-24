#!/bin/bash

docker build . -t testorflow

docker run -it --gpus all \
    -v $(pwd):/tf \
    -v ~/.keras:/.keras \
    -p 8888:8888 testorflow