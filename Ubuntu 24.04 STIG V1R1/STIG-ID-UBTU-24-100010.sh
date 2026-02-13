#!/bin/bash
# =====================================================================
# STIG ID: UBTU-24-100010
# Title  : Remove systemd-timesyncd
# Rule   : systemd-timesyncd package must not be installed
# Fix    : sudo apt remove -y systemd-timesyncd
# Author : Joseph De Santiago
# Created: 02/13/26
# =====================================================================

set -e

echo "[UBTU-24-100010] Removing systemd-timesyncd package if installed..."

apt remove -y systemd-timesyncd

echo "[UBTU-24-100010] Complete."
