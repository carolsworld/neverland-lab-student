#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."

COMPOSE="$(./scripts/_compose.sh)"
if [ -z "$COMPOSE" ]; then
  echo "[-] Docker Compose not found."
  echo "    Install on Kali: sudo apt update && sudo apt install docker-compose"
  exit 1
fi

$COMPOSE -f compose/docker-compose.yml -f compose/docker-compose.assessment.yml up -d --build

echo "[+] Neverland Assessment environment is running."
echo "    Modbus: 127.0.0.1:502"
echo "    No operator HMI"
echo "	  type docker ps for sanity check"
