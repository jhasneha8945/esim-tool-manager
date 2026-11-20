#!/bin/bash
# esim-tool-manager: basic environment checker for eSim on Ubuntu

echo "=== eSim Tool Manager ==="

# Check Ubuntu version
echo "OS info:"
lsb_release -d

# Check required tools
for tool in git python3 pip3; do
    if command -v "$tool" >/dev/null 2>&1; then
        echo "[OK] $tool is installed"
    else
        echo "[MISSING] $tool is not installed"
    fi
done

# Check if eSim is installed
if command -v esim >/dev/null 2>&1; then
    echo "[OK] eSim is installed"
else
    echo "[INFO] eSim is not installed yet"
fi
