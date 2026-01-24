#!/usr/bin/env bash
set -euo pipefail

docker compose \
  -f compose/docker-compose.yml \
  -f compose/docker-compose.assessment.yml \
  up -d

echo "[+] Neverland Assessment environment is running."
echo "    Modbus: 127.0.0.1:502"
echo "    No operator HMI"
echo "	  type docker ps for sanity check"
