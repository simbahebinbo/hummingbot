#!/bin/bash

CurrentDir=$(dirname $0)

# 激活conda环境
source $CONDA_PATH/etc/profile.d/conda.sh
conda activate hummingbot

echo "安装依赖包..."
# 从requirements文件安装依赖
pip3 install -r requirements.txt

# 编译Cython模块
echo "编译Cython模块..."
cd ${CurrentDir}  # 确保在项目根目录
python3 setup.py build_ext --inplace

echo "安装和编译完成！"

# 退出环境
conda deactivate
