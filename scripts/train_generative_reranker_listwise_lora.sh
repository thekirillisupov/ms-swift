nproc_per_node=4
# 4*47G
# losses: plugin/loss.py
# WANDB_API_KEY=94a6be573490e8d250c52c924d9f7f811e6c6c56 \
NPROC_PER_NODE=$nproc_per_node \
swift sft \
    --model Qwen/Qwen3-Reranker-4B \
    --task_type generative_reranker \
    --loss_type listwise_generative_reranker \
    --train_type lora \
    --lora_rank 8 --lora_alpha 16 \
    --lora_dropout 0.1 \
    --target_modules q_proj v_proj k_proj\
    --dataset  /home/jovyan/isupov/reranker/data/universal_retrieval/list_wise_samples_v1_2_07_25 \
    --eval_use_evalscope \
    --split_dataset_ratio 0.0 \
    --output_dir output/3_epoch_list_wise_samples_v1_2_07_25 \
    --num_train_epochs 3 \
    --save_strategy "epoch" \
    --per_device_train_batch_size 2 \
    --per_device_eval_batch_size 2 \
    --gradient_accumulation_steps 4 \
    --learning_rate 2e-4 \
    --label_names labels \
    --warmup_ratio 0.1 \
    --max_grad_norm 1.0 \
    --dataloader_drop_last true
