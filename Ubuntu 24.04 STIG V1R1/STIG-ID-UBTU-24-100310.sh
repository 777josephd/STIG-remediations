#!/bin/bash
# =====================================================================
# STIG ID: UBTU-24-100310
# Title  : Ensure UFW is Enabled
# Rule   : Uncomplicated Firewall (UFW) must be enabled
# Fix    : sudo ufw enable
# Author : Joseph De Santiago
# Created: 02/13/26
# =====================================================================

set -e

echo "[UBTU-24-100310] Enabling UFW firewall if not already enabled..."

ufw enable

echo "[UBTU-24-100310] Complete."
