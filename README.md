# Docker commands

Building: ```docker build -t vectorfusion_leon:latest .```

Run: ```CUDA_VISIBLE_DEVICES=0 docker run --rm --name="vectorfusion" -v "$(pwd):/tmp/workdir" --gpus all vectorfusion:latest``` + prompt

Example: CUDA_VISIBLE_DEVICES=0 docker run --rm --name="vectorfusion" -v "$(pwd):/tmp/workdir" --gpus all vectorfusion:latest 'A penguin fighting a cockroach'
