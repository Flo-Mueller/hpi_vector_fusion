# Docker commands

Building: ```docker build -t vectorfusion_leon:latest .```

Run: ```CUDA_VISIBLE_DEVICES=0 docker run --rm --name="vectorfusion" -v "$(pwd):/tmp/workdir" --gpus all vectorfusion:latest ./vectorfusion.sh 'a stickfigure reading a book. The stickfigure is wearing glasses. The book is open.'```