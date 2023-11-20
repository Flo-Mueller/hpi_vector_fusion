#!/bin/bash
prefix_prompt=$1
suffix_prompt="minimal flat 2d vector icon. lineal color. on a white background. trending on artstation."
prompt="$prefix_prompt $suffix_prompt"
overrides="style='iconography' sds.num_iter=500 num_iter=50"

#docker run --rm --name="vectorfusion_leon" -v "$(pwd):/tmp/workdir" --gpus '"device=1"' vectorfusion_leon:latest python3 run_painterly_render.py -c vectorfusion.yaml -pt "$prompt" -save_step 10 -respath /tmp/workdir -d 8888 --download -update $overrides
python3 run_painterly_render.py -c vectorfusion.yaml -pt "$prompt" -save_step 10 -respath /tmp/workdir -d 8888 --download -update $overrides