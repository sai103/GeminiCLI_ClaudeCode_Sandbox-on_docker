# Claude Code & Gemini CLI Docker Environment

汎用性を重視したnpm環境でClaude CodeとGemini CLIを実行するためのDocker環境です。

## 機能

- Node.js 18環境
- npm、TypeScript、ts-node、nodemon等の開発ツール
- port 5000でのWebアプリケーション開発対応
- ローカルPCとのファイル共有（volumes設定）
- Claude Code & Gemini CLIインストール用スクリプト

## セットアップ

1. 環境変数ファイルをコピー
```bash
cp env.example .env
```

2. 必要に応じて.envファイルを編集
```bash
# 開発環境設定
NODE_ENV=development
PORT=5000
```

3. Docker環境を起動
```bash
docker-compose up -d
```

4. コンテナに接続
```bash
docker exec -it dev-sandbox bash
```

5. AI CLIツールをインストール
```bash
chmod +x install-tools.sh
./install-tools.sh
```

## 使用方法

### Claude Codeの起動
```bash
# アカウント連携で認証後に使用
claude-code
```

### Gemini CLIの起動
```bash
# アカウント連携で認証後に使用
# 実際のコマンド名は公式リリース時に確認してください
```

### 開発環境
- `/workspace`: メインの作業ディレクトリ
- `/workspace/projects`: プロジェクトファイル用
- port 5000: Webアプリケーション用

### ファイル共有
- `./workspace` → `/workspace`
- `./projects` → `/workspace/projects`

## 便利なコマンド

```bash
# コンテナ起動
docker-compose up -d

# コンテナ接続
docker exec -it claude-dev-environment bash

# コンテナ停止
docker-compose down

# ログ確認
docker-compose logs -f
```
