#!/bin/bash
# =====================================================================
# STIG ID: UBTU-24-100040
# Title  : Remove rsh-server
# Rule   : rsh-server package must not be installed
# Fix    : sudo apt remove -y rsh-server
# Author : Joseph De Santiago
# Created: 02/13/26
# =====================================================================

set -e

echo "[UBTU-24-100040] Removing rsh-server package if installed..."

apt remove -y rsh-server

echo "[UBTU-24-100040] Complete."
