# Node.js 18をベースイメージとして使用
FROM node:18

# コンテナ内の作業ディレクトリを設定
WORKDIR /workspace

# install-tools.shスクリプトをコンテナにコピー
COPY install-tools.sh /workspace/
RUN chmod +x /workspace/install-tools.sh

# システムパッケージの更新と必要なツールをインストール
# git: バージョン管理システム
# curl: HTTP通信ツール
# vim: テキストエディタ
# python3, python3-pip: Python環境（AI開発で使用）
# build-essential: C/C++コンパイラなど（ネイティブモジュールのビルドに必要）
RUN apt-get update && apt-get install -y \
    git \
    curl \
    vim \
    python3 \
    python3-pip \
    python3-venv \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# npmのバージョン確認（Node.js 18に含まれるnpmを使用）
RUN npm --version

# 基本的なNode.js開発ツールをグローバルインストール
# typescript: TypeScript言語サポート
# ts-node: TypeScriptの直接実行
# nodemon: ファイル変更時の自動再起動
# @types/node: Node.js型定義
RUN npm install -g \
    typescript \
    ts-node \
    nodemon \
    @types/node

# Webアプリケーション用にポート5000を開放
EXPOSE 5000

# コンテナ起動時のデフォルトコマンド（bash起動）
CMD ["bash"]