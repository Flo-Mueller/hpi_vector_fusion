# Docker commands

Building: ```docker build -t vectorfusion:latest .```

Run: ```CUDA_VISIBLE_DEVICES=0 docker run --name="vectorfusion" -v "$(pwd):/tmp/workdir" --gpus all vectorfusion:latest```