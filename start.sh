#!/bin/bash

while true; do
    python3.10 "/workspace/generate.py" \
        --save_dir='/workspace/save/' \
        --user_path=/workspace/user_path \
        --langchain_mode="LLM" \
        --langchain_modes="['UserData', 'LLM']" \
        --score_model=None

    # Check if the process exited normally
    if [ $? -eq 0 ]; then
        echo "Script exited successfully."
        break
    else
        echo "Script exited with an error. Restarting..."
        sleep 5  # Add a delay before restarting to avoid constant restarts
    fi
done



########python3.10 "/workspace/generate.py" \
########	--save_dir='/workspace/save/' \
########	--user_path=/workspace/user_path \
########	--langchain_mode="LLM" \
########	--langchain_modes="['UserData', 'LLM']" \
########	--score_model=None

########--rope_scaling="{'type':'linear','factor':4}" \
########--base_model=lmsys/vicuna-13b-v1.5-16k \
########--hf_embedding_model=sentence-transformers/all-MiniLM-L6-v2 \
########--load_8bit=True \
########--prompt_type=vicuna11
#--h2ocolors=False
#       --max_max_new_tokens=2048 \
#       --max_new_tokens=1024
#       --use_gpu_id=False \
#       --use_safetensors=True \
#       --prompt_type=llama2 \

# python generate.py 
