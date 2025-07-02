#!/bin/bash

echo "🚀 Đang cài tmate..."
apt update && apt install -y tmate

echo "🔗 Đang khởi chạy phiên SSH..."
tmate -F &

sleep 5

echo "📡 Lấy link SSH..."
tmate -S /tmp/tmate.sock new-session -d
tmate -S /tmp/tmate.sock wait tmate-ready
tmate -S /tmp/tmate.sock display -p '#{tmate_ssh}'
tmate -S /tmp/tmate.sock display -p '#{tmate_web}'

# Giữ container luôn bật
sleep infinity
