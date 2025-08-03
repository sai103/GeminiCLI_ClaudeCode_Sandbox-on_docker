#!/bin/bash

echo "=== Claude Code & Gemini CLI Installation Script ==="

# Claude Codeのインストール（正しいパッケージ名を使用）
echo "Installing Claude Code..."
npm install -g @anthropic-ai/claude-code

# Gemini CLIのインストール（Googleが公式リリースした場合のため）
echo "Installing Gemini CLI..."
# 注意: Gemini CLIは仮想的なパッケージ名です。実際のパッケージ名に置き換えてください
# npm install -g @google/gemini-cli

# Python仮想環境を作成してツールをインストール
echo "Setting up Python virtual environment..."
python3 -m venv /workspace/venv
source /workspace/venv/bin/activate

echo "Installing Python AI tools in virtual environment..."
pip install requests beautifulsoup4 pandas numpy

# 仮想環境のアクティベーション用エイリアスを作成
echo "Creating Python virtual environment alias..."
echo 'alias activate-python="source /workspace/venv/bin/activate"' >> ~/.bashrc

# 便利な開発ツール
echo "Installing additional dev tools..."
npm install -g \
    prettier \
    eslint \
    jest \
    webpack \
    webpack-cli

echo "=== Installation completed! ==="
echo "Available commands:"
echo "- claude: Start Claude Code CLI"
echo "- node: Node.js REPL"
echo "- npm: Node Package Manager"
echo "- python3: Python 3 interpreter"
echo "- activate-python: Activate Python virtual environment (alias)"
echo ""
echo "Note: To use Python packages, run 'activate-python' first"