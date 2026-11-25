#!/usr/bin/env bash
set -euo pipefail

# Zeline dibuat oleh Mftrferdinand. Script ini menginstal paket PyPI zeline 0.4.6.

if [ "$(id -u)" -eq 0 ]; then
  apt-get update
  apt-get install -y python3 python3-venv python3-pip
else
  sudo apt-get update
  sudo apt-get install -y python3 python3-venv python3-pip
fi

mkdir -p "$HOME/.venvs" "$HOME/.local/bin"
python3 -m venv "$HOME/.venvs/zeline"
"$HOME/.venvs/zeline/bin/pip" install --upgrade pip
"$HOME/.venvs/zeline/bin/pip" install zeline==0.4.6
ln -sf "$HOME/.venvs/zeline/bin/zeline" "$HOME/.local/bin/zeline"

echo "Zeline 0.4.6 terinstal. Jalankan: ~/.venvs/zeline/bin/zeline setup"
echo "Verifikasi: ~/.venvs/zeline/bin/zeline doctor"
