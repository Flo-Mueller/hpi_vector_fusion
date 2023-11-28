#!/bin/bash
params="$*"
prompt="$params minimal flat 2d vector icon. lineal color. on a white background. trending on artstation."
python3 run_painterly_render.py -c vectorfusion.yaml -pt "$prompt" -save_step 10 -respath /tmp/workdir -d 8888 --download -update "K=4 style='iconography' sds.num_iter=1000"