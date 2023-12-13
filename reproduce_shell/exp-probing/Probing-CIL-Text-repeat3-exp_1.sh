config_setting='--config_file your-accelerate-config-file.yaml'

exp_prefix='ExpProbCILText'


for i in $(seq 1 3);
do
    echo 'Run '$i
    # ========================================================================================================================
    backbone='EleutherAI/pythia-70m-deduped'
    classifier='None'
    # ========================================================================================================================

    # ---------------------------------------------------------------------------------------------------------------------------
    wandb_setting='--is_wandb True --wandb_project Class-Incremental-TextClassification --wandb_entity junhao-zheng'
    # ---------------------------------------------------------------------------------------------------------------------------
    accelerate launch $config_setting main_CL.py $wandb_setting --exp_prefix $exp_prefix-$backbone-$classifier --cfg './config/CIL/generative_backbones/topic3datasets_task5/SEQ_full.yaml' --backbone $backbone --classifier $classifier --training_epochs 3 --evaluate_interval -1 --is_probing True --probing_n_metrics 1



    # ========================================================================================================================
    backbone='EleutherAI/pythia-160m-deduped'
    classifier='None'
    # ========================================================================================================================

    # ---------------------------------------------------------------------------------------------------------------------------
    wandb_setting='--is_wandb True --wandb_project Class-Incremental-TextClassification --wandb_entity junhao-zheng'
    # ---------------------------------------------------------------------------------------------------------------------------
    accelerate launch $config_setting main_CL.py $wandb_setting --exp_prefix $exp_prefix-$backbone-$classifier --cfg './config/CIL/generative_backbones/topic3datasets_task5/SEQ_full.yaml' --backbone $backbone --classifier $classifier --training_epochs 3 --evaluate_interval -1 --is_probing True --probing_n_metrics 1



    # ========================================================================================================================
    backbone='EleutherAI/pythia-410m-deduped'
    classifier='None'
    # ========================================================================================================================

    # ---------------------------------------------------------------------------------------------------------------------------
    wandb_setting='--is_wandb True --wandb_project Class-Incremental-TextClassification --wandb_entity junhao-zheng'
    # ---------------------------------------------------------------------------------------------------------------------------
    accelerate launch $config_setting main_CL.py $wandb_setting --exp_prefix $exp_prefix-$backbone-$classifier --cfg './config/CIL/generative_backbones/topic3datasets_task5/SEQ_full.yaml' --backbone $backbone --classifier $classifier --training_epochs 3 --evaluate_interval -1 --is_probing True --probing_n_metrics 1



    # ========================================================================================================================
    backbone='EleutherAI/pythia-70m-deduped'
    classifier='Linear'
    # ========================================================================================================================

    # ---------------------------------------------------------------------------------------------------------------------------
    wandb_setting='--is_wandb True --wandb_project Class-Incremental-TextClassification --wandb_entity junhao-zheng'
    # ---------------------------------------------------------------------------------------------------------------------------
    accelerate launch $config_setting main_CL.py $wandb_setting --exp_prefix $exp_prefix-$backbone-$classifier --cfg './config/CIL/generative_backbones/topic3datasets_task5/SEQ_warm_fix.yaml' --backbone $backbone --classifier $classifier --training_epochs 3 --evaluate_interval -1 --is_probing True --probing_n_metrics 1
    accelerate launch $config_setting main_CL.py $wandb_setting --exp_prefix $exp_prefix-$backbone-$classifier --cfg './config/CIL/generative_backbones/topic3datasets_task5/SEQ_pre_warm_fix.yaml' --backbone $backbone --classifier $classifier --training_epochs 3 --evaluate_interval -1 --is_probing True --probing_n_metrics 1




    # ========================================================================================================================
    backbone='EleutherAI/pythia-70m-deduped'
    classifier='CosineLinear'
    # ========================================================================================================================

    # ---------------------------------------------------------------------------------------------------------------------------
    wandb_setting='--is_wandb True --wandb_project Class-Incremental-TextClassification --wandb_entity junhao-zheng'
    # ---------------------------------------------------------------------------------------------------------------------------
    accelerate launch $config_setting main_CL.py $wandb_setting --exp_prefix $exp_prefix-$backbone-$classifier --cfg './config/CIL/generative_backbones/topic3datasets_task5/SEQ_warm_fix.yaml' --backbone $backbone --classifier $classifier --training_epochs 3 --evaluate_interval -1 --is_probing True --probing_n_metrics 1
    accelerate launch $config_setting main_CL.py $wandb_setting --exp_prefix $exp_prefix-$backbone-$classifier --cfg './config/CIL/generative_backbones/topic3datasets_task5/SEQ_pre_warm_fix.yaml' --backbone $backbone --classifier $classifier --training_epochs 3 --evaluate_interval -1 --is_probing True --probing_n_metrics 1



    # ========================================================================================================================
    backbone='EleutherAI/pythia-160m-deduped'
    classifier='Linear'
    # ========================================================================================================================

    # ---------------------------------------------------------------------------------------------------------------------------
    wandb_setting='--is_wandb True --wandb_project Class-Incremental-TextClassification --wandb_entity junhao-zheng'
    # ---------------------------------------------------------------------------------------------------------------------------
    accelerate launch $config_setting main_CL.py $wandb_setting --exp_prefix $exp_prefix-$backbone-$classifier --cfg './config/CIL/generative_backbones/topic3datasets_task5/SEQ_warm_fix.yaml' --backbone $backbone --classifier $classifier --training_epochs 3 --evaluate_interval -1 --is_probing True --probing_n_metrics 1
    accelerate launch $config_setting main_CL.py $wandb_setting --exp_prefix $exp_prefix-$backbone-$classifier --cfg './config/CIL/generative_backbones/topic3datasets_task5/SEQ_pre_warm_fix.yaml' --backbone $backbone --classifier $classifier --training_epochs 3 --evaluate_interval -1 --is_probing True --probing_n_metrics 1




    # ========================================================================================================================
    backbone='EleutherAI/pythia-160m-deduped'
    classifier='CosineLinear'
    # ========================================================================================================================

    # ---------------------------------------------------------------------------------------------------------------------------
    wandb_setting='--is_wandb True --wandb_project Class-Incremental-TextClassification --wandb_entity junhao-zheng'
    # ---------------------------------------------------------------------------------------------------------------------------
    accelerate launch $config_setting main_CL.py $wandb_setting --exp_prefix $exp_prefix-$backbone-$classifier --cfg './config/CIL/generative_backbones/topic3datasets_task5/SEQ_warm_fix.yaml' --backbone $backbone --classifier $classifier --training_epochs 3 --evaluate_interval -1 --is_probing True --probing_n_metrics 1
    accelerate launch $config_setting main_CL.py $wandb_setting --exp_prefix $exp_prefix-$backbone-$classifier --cfg './config/CIL/generative_backbones/topic3datasets_task5/SEQ_pre_warm_fix.yaml' --backbone $backbone --classifier $classifier --training_epochs 3 --evaluate_interval -1 --is_probing True --probing_n_metrics 1




    # ========================================================================================================================
    backbone='EleutherAI/pythia-410m-deduped'
    classifier='Linear'
    # ========================================================================================================================

    # ---------------------------------------------------------------------------------------------------------------------------
    wandb_setting='--is_wandb True --wandb_project Class-Incremental-TextClassification --wandb_entity junhao-zheng'
    # ---------------------------------------------------------------------------------------------------------------------------
    accelerate launch $config_setting main_CL.py $wandb_setting --exp_prefix $exp_prefix-$backbone-$classifier --cfg './config/CIL/generative_backbones/topic3datasets_task5/SEQ_warm_fix.yaml' --backbone $backbone --classifier $classifier --training_epochs 3 --evaluate_interval -1 --is_probing True --probing_n_metrics 1
    accelerate launch $config_setting main_CL.py $wandb_setting --exp_prefix $exp_prefix-$backbone-$classifier --cfg './config/CIL/generative_backbones/topic3datasets_task5/SEQ_pre_warm_fix.yaml' --backbone $backbone --classifier $classifier --training_epochs 3 --evaluate_interval -1 --is_probing True --probing_n_metrics 1




    # ========================================================================================================================
    backbone='EleutherAI/pythia-410m-deduped'
    classifier='CosineLinear'
    # ========================================================================================================================

    # ---------------------------------------------------------------------------------------------------------------------------
    wandb_setting='--is_wandb True --wandb_project Class-Incremental-TextClassification --wandb_entity junhao-zheng'
    # ---------------------------------------------------------------------------------------------------------------------------
    accelerate launch $config_setting main_CL.py $wandb_setting --exp_prefix $exp_prefix-$backbone-$classifier --cfg './config/CIL/generative_backbones/topic3datasets_task5/SEQ_warm_fix.yaml' --backbone $backbone --classifier $classifier --training_epochs 3 --evaluate_interval -1 --is_probing True --probing_n_metrics 1
    accelerate launch $config_setting main_CL.py $wandb_setting --exp_prefix $exp_prefix-$backbone-$classifier --cfg './config/CIL/generative_backbones/topic3datasets_task5/SEQ_pre_warm_fix.yaml' --backbone $backbone --classifier $classifier --training_epochs 3 --evaluate_interval -1 --is_probing True --probing_n_metrics 1




    # ========================================================================================================================
    backbone='bert-base-cased'
    classifier='Linear'
    # ========================================================================================================================

    # ---------------------------------------------------------------------------------------------------------------------------
    wandb_setting='--is_wandb True --wandb_project Class-Incremental-TextClassification --wandb_entity junhao-zheng'
    # ---------------------------------------------------------------------------------------------------------------------------
    accelerate launch $config_setting main_CL.py $wandb_setting --exp_prefix $exp_prefix-$backbone-$classifier --cfg './config/CIL/discriminative_backbones/topic3datasets_task5/SEQ_full.yaml' --backbone $backbone --classifier $classifier --training_epochs 3 --evaluate_interval -1 --is_probing True --probing_n_metrics 1
    accelerate launch $config_setting main_CL.py $wandb_setting --exp_prefix $exp_prefix-$backbone-$classifier --cfg './config/CIL/discriminative_backbones/topic3datasets_task5/SEQ_warm_fix.yaml' --backbone $backbone --classifier $classifier --training_epochs 3 --evaluate_interval -1 --is_probing True --probing_n_metrics 1
    accelerate launch $config_setting main_CL.py $wandb_setting --exp_prefix $exp_prefix-$backbone-$classifier --cfg './config/CIL/discriminative_backbones/topic3datasets_task5/SEQ_pre_warm_fix.yaml' --backbone $backbone --classifier $classifier --training_epochs 3 --evaluate_interval -1 --is_probing True --probing_n_metrics 1




    # ========================================================================================================================
    backbone='bert-base-cased'
    classifier='CosineLinear'
    # ========================================================================================================================

    # ---------------------------------------------------------------------------------------------------------------------------
    wandb_setting='--is_wandb True --wandb_project Class-Incremental-TextClassification --wandb_entity junhao-zheng'
    # ---------------------------------------------------------------------------------------------------------------------------
    accelerate launch $config_setting main_CL.py $wandb_setting --exp_prefix $exp_prefix-$backbone-$classifier --cfg './config/CIL/discriminative_backbones/topic3datasets_task5/SEQ_full.yaml' --backbone $backbone --classifier $classifier --training_epochs 3 --evaluate_interval -1 --is_probing True --probing_n_metrics 1
    accelerate launch $config_setting main_CL.py $wandb_setting --exp_prefix $exp_prefix-$backbone-$classifier --cfg './config/CIL/discriminative_backbones/topic3datasets_task5/SEQ_warm_fix.yaml' --backbone $backbone --classifier $classifier --training_epochs 3 --evaluate_interval -1 --is_probing True --probing_n_metrics 1
    accelerate launch $config_setting main_CL.py $wandb_setting --exp_prefix $exp_prefix-$backbone-$classifier --cfg './config/CIL/discriminative_backbones/topic3datasets_task5/SEQ_pre_warm_fix.yaml' --backbone $backbone --classifier $classifier --training_epochs 3 --evaluate_interval -1 --is_probing True --probing_n_metrics 1




    # ========================================================================================================================
    backbone='bert-large-cased'
    classifier='Linear'
    # ========================================================================================================================

    # ---------------------------------------------------------------------------------------------------------------------------
    wandb_setting='--is_wandb True --wandb_project Class-Incremental-TextClassification --wandb_entity junhao-zheng'
    # ---------------------------------------------------------------------------------------------------------------------------
    accelerate launch $config_setting main_CL.py $wandb_setting --exp_prefix $exp_prefix-$backbone-$classifier --cfg './config/CIL/discriminative_backbones/topic3datasets_task5/SEQ_full.yaml' --backbone $backbone --classifier $classifier --training_epochs 3 --evaluate_interval -1 --is_probing True --probing_n_metrics 1
    accelerate launch $config_setting main_CL.py $wandb_setting --exp_prefix $exp_prefix-$backbone-$classifier --cfg './config/CIL/discriminative_backbones/topic3datasets_task5/SEQ_warm_fix.yaml' --backbone $backbone --classifier $classifier --training_epochs 3 --evaluate_interval -1 --is_probing True --probing_n_metrics 1
    accelerate launch $config_setting main_CL.py $wandb_setting --exp_prefix $exp_prefix-$backbone-$classifier --cfg './config/CIL/discriminative_backbones/topic3datasets_task5/SEQ_pre_warm_fix.yaml' --backbone $backbone --classifier $classifier --training_epochs 3 --evaluate_interval -1 --is_probing True --probing_n_metrics 1




    # ========================================================================================================================
    backbone='bert-large-cased'
    classifier='CosineLinear'
    # ========================================================================================================================

    # ---------------------------------------------------------------------------------------------------------------------------
    wandb_setting='--is_wandb True --wandb_project Class-Incremental-TextClassification --wandb_entity junhao-zheng'
    # ---------------------------------------------------------------------------------------------------------------------------
    accelerate launch $config_setting main_CL.py $wandb_setting --exp_prefix $exp_prefix-$backbone-$classifier --cfg './config/CIL/discriminative_backbones/topic3datasets_task5/SEQ_full.yaml' --backbone $backbone --classifier $classifier --training_epochs 3 --evaluate_interval -1 --is_probing True --probing_n_metrics 1
    accelerate launch $config_setting main_CL.py $wandb_setting --exp_prefix $exp_prefix-$backbone-$classifier --cfg './config/CIL/discriminative_backbones/topic3datasets_task5/SEQ_warm_fix.yaml' --backbone $backbone --classifier $classifier --training_epochs 3 --evaluate_interval -1 --is_probing True --probing_n_metrics 1
    accelerate launch $config_setting main_CL.py $wandb_setting --exp_prefix $exp_prefix-$backbone-$classifier --cfg './config/CIL/discriminative_backbones/topic3datasets_task5/SEQ_pre_warm_fix.yaml' --backbone $backbone --classifier $classifier --training_epochs 3 --evaluate_interval -1 --is_probing True --probing_n_metrics 1




done