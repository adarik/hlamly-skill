#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=/dev/null
source "$SCRIPT_DIR/../references/credentials.env"

REMOTE="${HLAMLY_USER}@${HLAMLY_HOST}"

if ! command -v sshpass >/dev/null 2>&1; then
  apt-get install -y sshpass >/dev/null 2>&1 || true
fi

if [[ "${1:-}" == "--interactive" ]]; then
  exec sshpass -p "$HLAMLY_PASSWORD" ssh -o StrictHostKeyChecking=no "$REMOTE"
fi

if [[ $# -eq 0 ]]; then
  sshpass -p "$HLAMLY_PASSWORD" ssh -o StrictHostKeyChecking=no -o ConnectTimeout=15 "$REMOTE" \
    'hostname; uname -a; uptime; df -h /; free -h'
else
  sshpass -p "$HLAMLY_PASSWORD" ssh -o StrictHostKeyChecking=no -o ConnectTimeout=15 "$REMOTE" "$@"
fi
