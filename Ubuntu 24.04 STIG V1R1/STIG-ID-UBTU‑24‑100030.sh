#!/bin/bash
# =====================================================================
# STIG ID: UBTU-24-100030
# Title  : Remove Telnet
# Rule   : Telnet package must not be installed
# Fix    : sudo apt remove -y telnet
# Author : Joseph De Santiago
# Created: 02/13/26
# =====================================================================

set -e

echo "[UBTU-24-100030] Removing telnet package if installed..."

apt remove -y telnet

echo "[UBTU-24-100030] Complete."
