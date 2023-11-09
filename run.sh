#!/bin/bash
params="$*"
prompt="$params minimal flat 2d vector icon. lineal color. on a white background. trending on artstation."
python3 run_painterly_render.py -c vectorfusion.yaml -pt "$prompt" -save_step 10 -respath /tmp/workdir -update K=20 -d 8888 --download