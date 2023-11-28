#!/bin/bash
prefix_prompt=$1
suffix_prompt="minimal 2d line drawing. trending on artstation."
prompt="$prefix_prompt $suffix_prompt"
#overrides="style=iconography sds.num_iter=500 num_iter=50 image_size=300"

cd VectorFusion-pytorch
CUDA_VISIBLE_DEVICES=0 python3 run_painterly_render.py -c vectorfusion.yaml -pt "$prompt" -save_step 10 -mv -frame_freq 10 -respath /tmp/workdir -d 8888 --download #-update $overrides