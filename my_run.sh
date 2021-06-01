#!/usr/bin/env bash

# python main.py --output_dir ./run --coco_path ~/Desktop/coco --lr 0.0002 --lr_backbone 0.00001 --num_queries 300 --batch_size 1 --enc_layers 6 --dec_layers 6 --no_aux_loss

python -m torch.distributed.launch --nproc_per_node=8 --nnodes=1  --node_rank 0  --use_env main.py \
--output_dir ./run \
--coco_path ~/coco \
--lr 0.0002 \
--lr_backbone 0.00001 \
--num_queries 300 \
--batch_size 1 \
--epochs 300 \
--num_workers 2 \
--enc_layers 6 \
--dec_layers 6 \
--no_aux_loss \
--scales 1 \
