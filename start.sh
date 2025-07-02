#!/bin/bash

echo "?? ?ang cài tmate..."
apt update && apt install -y tmate

echo "?? ?ang kh?i ch?y phiên SSH qua tmate..."
tmate -F &
sleep 5

echo "?? ?ang l?y link SSH:"
tmate -S /tmp/tmate.sock new-session -d
tmate -S /tmp/tmate.sock wait tmate-ready
tmate -S /tmp/tmate.sock display -p '#{tmate_ssh}'
tmate -S /tmp/tmate.sock display -p '#{tmate_web}'

# Gi? container s?ng
sleep infinity