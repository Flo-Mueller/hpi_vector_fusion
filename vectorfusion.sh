#!/bin/bash

# Arguments:
# 1. Prompt to use for image generation and optimization
python3 run_painterly_render.py -c vectorfusion.yaml -pt "$1 minimal flat 2d vector icon. lineal color. on a white background. trending on artstation." -save_step 10 -respath /tmp/workdir -update K=20 -d 8888 --download