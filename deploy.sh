#!/bin/bash

# 套利计算器 - GitHub 部署脚本
# 使用方法:
# 1. 先在 GitHub 网站创建名为 "arbitrage-calculator" 的仓库
# 2. 运行: bash deploy.sh 您的GitHub用户名

if [ -z "$1" ]; then
    echo "❌ 请提供您的 GitHub 用户名"
    echo "使用方法: bash deploy.sh 您的GitHub用户名"
    echo "示例: bash deploy.sh john"
    exit 1
fi

USERNAME=$1
REPO_NAME="arbitrage-calculator"
CURRENT_DIR=$(pwd)

echo "🚀 开始部署到 GitHub..."
echo "用户名: $USERNAME"
echo "仓库名: $REPO_NAME"

# 检查是否已在 GitHub 创建仓库
echo ""
echo "⚠️  请确保您已在 GitHub 创建了仓库: https://github.com/$USERNAME/$REPO_NAME"
echo ""
read -p "是否已创建仓库? (y/n): " confirm

if [ "$confirm" != "y" ] && [ "$confirm" != "Y" ]; then
    echo "请先访问 https://github.com/new 创建仓库"
    echo "仓库名设为: $REPO_NAME"
    exit 0
fi

# 添加远程仓库
echo ""
echo "📦 添加远程仓库..."
git remote add origin https://github.com/$USERNAME/$REPO_NAME.git 2>/dev/null
if [ $? -ne 0 ]; then
    echo "远程仓库已存在，跳过添加"
fi

# 推送代码
echo ""
echo "📤 推送代码到 GitHub..."
git branch -M main
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ 代码推送成功!"
    echo ""
    echo "📋 启用 GitHub Pages:"
    echo "   1. 访问 https://github.com/$USERNAME/$REPO_NAME/settings"
    echo "   2. 点击左侧 'Pages'"
    echo "   3. 在 'Branch' 下选择 'main'"
    echo "   4. 点击 'Save'"
    echo "   5. 等待 1-2 分钟，网页即可访问"
    echo ""
    echo "🌐 访问地址: https://$USERNAME.github.io/$REPO_NAME/"
else
    echo ""
    echo "❌ 推送失败，请检查网络连接或 GitHub 凭证"
fi
