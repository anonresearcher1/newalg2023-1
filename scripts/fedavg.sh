#!/bin/sh

for alg in fedavg
do
    python ../main.py \
    --ntrials=3 \
    --rounds=100 \
    --num_users=100 \
    --frac=0.1 \
    --local_ep=10 \
    --local_bs=10 \
    --lr=0.01 \
    --momentum=0.9 \
    --model=lenet5 \
    --dataset=cifar10 \
    --partition='niid-labeldir' \
    --datadir='../../data/' \
    --logdir='../results/' \
    --log_filename='lenet5_E10_C0.1_sgd_0.01' \
    --alg=$alg \
    --iid_beta=0.5 \
    --niid_beta=0.5 \
    --local_view \
    --noise=0 \
    --gpu=0 \
    --print_freq=10
done 
