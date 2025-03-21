#!/bin/bash

CurrentDir=$(dirname $0)

# 指定完整路径
CONDA_PATH=$HOME/miniconda3  # 根据你的安装路径修改

# 激活conda环境
source $CONDA_PATH/etc/profile.d/conda.sh
conda activate hummingbot

# 在环境中运行hummingbot
${CurrentDir}/start

# 结束后退出环境
conda deactivate

