#!/bin/bash
# =====================================================================
# STIG ID: UBTU-24-300014
# Title  : Enforce pwquality dictcheck
# Rule   : /etc/security/pwquality.conf must have dictcheck=1
# Fix    : Add or update "dictcheck=1" in /etc/security/pwquality.conf
# Author : Joseph De Santiago
# Created: 02/13/26
# =====================================================================

set -e

PWQUALITY_FILE="/etc/security/pwquality.conf"

echo "[UBTU-24-300014] Ensuring dictcheck=1 is set in pwquality.conf..."

# If line exists but commented out or set differently, update it
if grep -qE '^\s*dictcheck\s*=\s*1\s*$' "$PWQUALITY_FILE"; then
    echo "dictcheck=1 already correctly set. No changes needed."
else
    # Remove existing dictcheck lines (commented or incorrect)
    sed -i '/^\s*#\?\s*dictcheck\s*=.*/d' "$PWQUALITY_FILE"
    # Append correct setting
    echo "dictcheck=1" >> "$PWQUALITY_FILE"
    echo "Updated $PWQUALITY_FILE with dictcheck=1"
fi

echo "[UBTU-24-300014] Complete."
