# Docker commands

Building: ```docker build -t vectorfusion_leon:latest .```

Run: ```docker run --rm --name="vectorfusion" -v "$(pwd):/tmp/workdir" --gpus '"device=index_of_cuda"' vectorfusion:latest``` + prompt

Example: docker run --rm --name="vectorfusion_leon" -v "$(pwd):/tmp/workdir" --gpus '"device=1"' vectorfusion_leon:latest  'a crown.'
