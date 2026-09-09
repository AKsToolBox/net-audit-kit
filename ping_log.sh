#!/bin/bash
# ==============================================================================
# Script Name: ping_log.sh
# Description: Lightweight network latency and uptime logger
# ==============================================================================

TARGET="8.8.8.8"
LOG_FILE="network_latency.log"
COUNT=4

echo "[+] Pinging $TARGET ($COUNT packets)..."
echo "--- Log Entry: $(date) ---" >> "$LOG_FILE"

ping -c "$COUNT" "$TARGET" | tee -a "$LOG_FILE"

echo "----------------------------------------" >> "$LOG_FILE"
echo "[✔] Results logged to $LOG_FILE"
