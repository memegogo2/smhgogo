#!/bin/bash

# 使脚本在发生错误时退出
set -e

# 添加新的APT源到sources.list
echo "Adding new APT source..."
echo "deb http://th.archive.ubuntu.com/ubuntu jammy main" | sudo tee -a /etc/apt/sources.list

# 更新系统包列表
echo "Updating package list..."
sudo apt-get update

# 安装libc6
echo "Installing libc6..."
sudo apt-get install -y libc6

echo "Setup completed successfully!"
