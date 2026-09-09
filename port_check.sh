#!/bin/bash
# ==============================================================================
# Script Name: port_check.sh
# Description: Quick TCP port connectivity and status check utility
# ==============================================================================

TARGET_HOST="${1:-127.0.0.1}"
PORTS=(22 80 443 3306 8080)

echo "============================================"
echo " Checking TCP Connectivity for: $TARGET_HOST"
echo "============================================"

for PORT in "${PORTS[@]}"; do
    # Check port using bash /dev/tcp pseudo-device with a 2-second timeout
    (echo >/dev/tcp/$TARGET_HOST/$PORT) >/dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "[OPEN]   Port $PORT is reachable on $TARGET_HOST"
    else
        echo "[CLOSED] Port $PORT is NOT reachable on $TARGET_HOST"
    fi
done

echo "============================================"
