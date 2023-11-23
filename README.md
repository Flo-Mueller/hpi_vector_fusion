# Conda environment setup

Run: ```conda env create -f env.yaml``` or use mamba if it is slow.

Then:
```
git clone https://github.com/BachiLi/diffvg.git && cd diffvg && git submodule update --init --recursive && DIFFVG_CUDA=1 python setup.py install
```


# Docker commands

Building: ```docker build -t vectorfusion_leon:latest .```

Run: ```docker run --rm --name="vectorfusion" -v "$(pwd):/tmp/workdir" --gpus '"device=index_of_cuda"' vectorfusion:latest``` + prompt

Example: docker run --rm --name="vectorfusion_leon" -v "$(pwd):/tmp/workdir" --gpus '"device=0"' vectorfusion_leon:latest "./run.sh 'A delicious hamburger.'"

Example: docker run --rm --name="vectorfusion_leon" -v "$(pwd):/tmp/workdir" --gpus '"device=1"' -it vectorfusion_leon:latest

