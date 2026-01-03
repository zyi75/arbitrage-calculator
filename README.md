# 套利计算器 (Arbitrage Calculator)

Polymarket 与传统盘交叉套利分析工具。

## 在线访问

通过 GitHub Pages 访问：`https://[用户名].github.io/arbitrage-calculator/`

## 本地使用

直接用浏览器打开 `index.html` 文件即可。

## 部署到 GitHub Pages

### 方法 1：使用命令行（推荐）

```bash
# 1. 创建 GitHub 仓库
#    访问 https://github.com/new 创建名为 "arbitrage-calculator" 的仓库

# 2. 本地推送（已配置好）
git remote add origin https://github.com/[您的用户名]/arbitrage-calculator.git
git branch -M main
git push -u origin main

# 3. 启用 GitHub Pages
#    Settings → Pages → Source 选择 "main" 分支 → Save
```

### 方法 2：使用 GitHub Desktop

1. 下载并安装 GitHub Desktop
2. File → Add Local Repository
3. 选择 `arbitrage-calculator` 文件夹
4. 点击 "Publish repository"
5. 在 GitHub 网站启用 Pages

## 功能

- 输入 4 组数据自动计算套利机会
- 显示最优下注金额
- 区分有套利空间和无套利空间两种情况
- 无论盈亏都保持两边结果平衡

## 技术栈

- 纯 HTML/CSS/JavaScript
- 无需后端
- 响应式设计

## 作者

MiniMax Agent
