#!/bin/bash
dt=$(date '+%Y%m%d_%H%M%S')
echo "Start time: $dt"
CUDA_VISIBLE_DEVICES=0 python main_regression.py results_$dt.pkl
python show_results.py results_$dt.pkl 200 > result_gpu0_$dt.txt 
