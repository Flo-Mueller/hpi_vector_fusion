# Docker commands

Building: ```docker build -t vectorfusion:latest .```

Run: ```docker run --rm --name="vectorfusion" -v "$(pwd):/tmp/workdir" --gpus '"device=index_of_cuda"' vectorfusion:latest``` + prompt

Example: docker run --rm --name="vectorfusion" -v "$(pwd):/tmp/workdir" --gpus '"device=0"' vectorfusion:latest 'a crown.'
