1. Add local file for sft
 - add to llm.py 
 Successfully registered `/home/jovyan/isupov/ms-swift/swift/llm/dataset/data/dataset_info.json`.
 """
register_dataset(
    DatasetMeta(
        ms_dataset_id='/home/jovyan/isupov/reranker/data/universal_retrieval/list_wise_samples_v3_5_08_25',
        hf_dataset_id='/home/jovyan/isupov/reranker/data/universal_retrieval/list_wise_samples_v3_5_08_25',
        dataset_path='/home/jovyan/isupov/reranker/data/universal_retrieval/list_wise_samples_v3_5_08_25.json',
        dataset_name='list_wise_samples_v3_5_08_25',
        split=['train'],
        preprocess_func=MTEBRerankPreprocessor(),
        tags=['rerank', '🔥']))
 """

2. Example of Lora sft 
 - scripts/train_generative_reranker_listwise_lora.sh

3. How to change prompt
ms-swift/swift/llm/template/constant.py 
LLMTemplateType.qwen3_reranker = 'qwen3_reranker'

register template in swift/llm/template/template/qwen.py as CustomQwen3RerankerTemplate
after add --template parameter in swift/llm/template/constant.py

