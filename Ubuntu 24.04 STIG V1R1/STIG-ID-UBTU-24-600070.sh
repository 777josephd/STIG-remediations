#!/bin/bash
# =====================================================================
# STIG ID: UBTU-24-600070
# Title  : Disable Kernel Core Dumps
# Rule   : kdump.service must be disabled unless required
# Fix    : systemctl disable kdump.service
# Auther : Joseph De Santiago
# Created: 02/13/26
# =====================================================================

set -e

echo "[UBTU-24-600070] Disabling kdump.service..."

systemctl disable kdump.service

echo "[UBTU-24-600070] Complete."
