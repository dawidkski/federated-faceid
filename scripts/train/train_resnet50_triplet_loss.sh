#!/usr/bin/env bash
set -e

source scripts/common.sh

python3 ./src/facenet/train_triplet.py \
    --embedding_dim 512 \
    --batch_size 128 \
    --triplet_loss_margin 0.2 \
    --model_architecture "resnet50" \
    --optimizer "adam" \
    --learning_rate 0.001 \
    --output_dir "outputs/resnet50_triplet" \
    --dataset_dir "data/vggface2/train_cropped" \
    --lfw_dir "data/lfw/data" \
    --dataset_csv_file "data/vggface2/train_cropped_meta.csv"
