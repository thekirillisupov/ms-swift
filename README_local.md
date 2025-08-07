1. Add local file for sft
 - add to llm.py 
 Successfully registered `/home/jovyan/isupov/ms-swift/swift/llm/dataset/data/dataset_info.json`.
 ```python
register_dataset(
    DatasetMeta(
        ms_dataset_id='/home/jovyan/isupov/reranker/data/universal_retrieval/list_wise_samples_v3_5_08_25',
        hf_dataset_id='/home/jovyan/isupov/reranker/data/universal_retrieval/list_wise_samples_v3_5_08_25',
        dataset_path='/home/jovyan/isupov/reranker/data/universal_retrieval/list_wise_samples_v3_5_08_25.json',
        dataset_name='list_wise_samples_v3_5_08_25',
        split=['train'],
        preprocess_func=MTEBRerankPreprocessor(),
        tags=['rerank', '🔥']))
 ```

2. Example of Lora sft 
 - `scripts/train_generative_reranker_listwise_lora.sh`
