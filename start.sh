#!/bin/bash

echo "🚀 VPS free 24/7 đang chạy..."
tmate -F &
sleep 5

echo "🔑 Lấy SSH link..."
tmate -S /tmp/tmate.sock new-session -d
tmate -S /tmp/tmate.sock wait tmate-ready
tmate -S /tmp/tmate.sock display -p '#{tmate_ssh}'
tmate -S /tmp/tmate.sock display -p '#{tmate_web}'

# Giữ cho container sống
sleep infinity