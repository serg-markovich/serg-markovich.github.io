#!/bin/bash

# Скрипт для деплоя на production VPS
# Использование: ./deploy.sh

echo "🚀 Deploying to production VPS..."

rsync -avz --progress --delete \
  ./ \
  root@158.220.127.16:/home/sergmrx/web/serg-markovich.de/public_html/ \
  --exclude='.git' \
  --exclude='README.md' \
  --exclude='deploy.sh' \
  --exclude='.gitignore'

echo "✅ Deployment complete!"
echo "🌐 Check: https://serg-markovich.de"
