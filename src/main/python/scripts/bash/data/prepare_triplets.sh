#!/usr/bin/env bash
set -e
export PYTHONPATH=./fedfaceid

python3 fedfaceid/facenet/generate_triplets.py \
    --data_meta_path "../../../data/vggface2/train_cropped_meta.csv" \
    --output_path  "../../../data/vggface2/train_triplets_10m.npy" \
    --num_triplets 10000000
