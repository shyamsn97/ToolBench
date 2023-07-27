export CUDA_VISIBLE_DEVICES=0
export RAPIDAPIKEY=""
export OUTPUT_DIR="data/toolllama/pipeline_answer/toolllama_lora"
export PYTHONPATH=./

mkdir $OUTPUT_DIR
python toolbench/inference/qa_pipeline.py \
    --tool_root_dir data/toolenv/tools/ \
    --backbone_model toolllama \
    --model_path huggyllama/llama-7b \
    --lora \
    --lora_path toolllama_lora \
    --max_observation_length 1024 \
    --method DFS_woFilter_w2 \
    --input_query_file data/instruction/inference_query_demo.json \
    --output_answer_file $OUTPUT_DIR \
    --rapidapi_key $RAPIDAPIKEY
