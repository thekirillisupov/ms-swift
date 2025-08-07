nproc_per_node=4
# 4*47G
# losses: plugin/loss.py
NPROC_PER_NODE=$nproc_per_node \
swift sft \
    --model Qwen/Qwen3-Reranker-4B \
    --task_type generative_reranker \
    --loss_type listwise_generative_reranker \
    --train_type full \
    --dataset  /home/jovyan/isupov/reranker/data/universal_retrieval/list_wise_samples_v1_2_07_25 \
    --split_dataset_ratio 0.05 \
    --eval_strategy steps \
    --output_dir output \
    --eval_steps 1000 \
    --num_train_epochs 3 \
    --save_strategy "epoch" \
    --per_device_train_batch_size 1 \
    --per_device_eval_batch_size 1 \
    --gradient_accumulation_steps 8 \
    --learning_rate 2e-4 \
    --label_names labels \
    --dataloader_drop_last true
