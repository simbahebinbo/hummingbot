#!/bin/bash

# 指定完整路径
CONDA_PATH=~/miniconda3  # 根据你的安装路径修改

# 正确方式：先source conda.sh然后激活环境
source $CONDA_PATH/etc/profile.d/conda.sh
conda activate hummingbot

# 安装特定版本的依赖包，避免版本冲突
pip install pydantic==1.10.8
pip install web3==6.14.0
pip install eth-account==0.11.0
pip install commlib-py==0.8.0
pip install aioprocessing==2.0
pip install ruamel.yaml==0.16.10
pip install PyYAML==6.0
pip install psutil==5.7.2
pip install base58==2.1.1
pip install pandas_ta==0.3.14b
pip install pyperclip==1.7.0
pip install ptpython==3.0.20

# 安装其他依赖包
pip install aiohttp cachetools pandas sqlalchemy numpy ujson tabulate prompt_toolkit
pip install websockets yarl cryptography
pip install asyncssh requests jsonpickle

# 编译Cython模块
echo "编译Cython模块..."
cd "$(dirname "$0")"  # 确保在项目根目录
python setup.py build_ext --inplace

# 在环境中运行hummingbot
./start

# 结束后退出环境
conda deactivate

