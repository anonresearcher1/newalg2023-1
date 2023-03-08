#!/bin/sh

for alg in fedavg
do
    python ../main.py \
    --ntrials=3 \
    --rounds=100 \
    --num_users=20 \
    --frac=0.2 \
    --local_ep=10 \
    --local_bs=10 \
    --lr=0.01 \
    --momentum=0.9 \
    --model=resnet9 \
    --dataset=cifar100 \
    --partition='niid-labeldir' \
    --datadir='../../data/' \
    --logdir='../results_newcomers/' \
    --log_filename='resnet9_E10_C0.2_sgd_0.01' \
    --alg=$alg \
    --iid_beta=0.5 \
    --niid_beta=0.1 \
    --new_comer \
    --ft_epoch=20 \
    --gpu=0 \
    --print_freq=10
done 
