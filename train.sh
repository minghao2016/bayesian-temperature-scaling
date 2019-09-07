#!/bin/sh

rm -rf __pycache__/
BS=256
BAY=False

python -u train.py --batch_size=${BS} --epochs=500 --train_bayesian=${BAY} --model=resnet18 --dataset=cifar10 | tee `date '+%Y-%m-%d_%H-%M-%S'`_resnet18.log
python -u train.py --batch_size=${BS} --epochs=500 --train_bayesian=${BAY} --model=resnet101 --dataset=cifar100 | tee `date '+%Y-%m-%d_%H-%M-%S'`_resnet101.log
python -u train.py --batch_size=${BS} --epochs=500 --train_bayesian=${BAY} --model=densenet169 --dataset=cifar100 | tee `date '+%Y-%m-%d_%H-%M-%S'`_densenet169.log