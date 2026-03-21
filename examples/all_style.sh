#!/bin/bash
# =============================================================
# all_style.sh
# Menjalankan semua training style secara berurutan (sequential)
# Task 1 selesai -> lanjut Task 2 -> lanjut Task 3 -> lanjut Task 4
# =============================================================

set -e  # Berhenti otomatis kalau ada error di salah satu script

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "=============================================="
echo "  STARTING ALL STYLE TRAINING PIPELINE"
echo "=============================================="
echo ""

# ---- Task 1: Style 1-10 ----
echo "=============================================="
echo "  [1/4] Training Style 1-10"
echo "  Started at: $(date)"
echo "=============================================="
bash "$SCRIPT_DIR/1_10_style.sh"
echo ""
echo "  [1/4] Style 1-10 COMPLETED at: $(date)"
echo "=============================================="
echo ""

# ---- Task 2: Style 11-20 ----
echo "=============================================="
echo "  [2/4] Training Style 11-20"
echo "  Started at: $(date)"
echo "=============================================="
bash "$SCRIPT_DIR/11_20_style.sh"
echo ""
echo "  [2/4] Style 11-20 COMPLETED at: $(date)"
echo "=============================================="
echo ""

# ---- Task 3: Style 21-30 ----
echo "=============================================="
echo "  [3/4] Training Style 21-30"
echo "  Started at: $(date)"
echo "=============================================="
bash "$SCRIPT_DIR/21_30_style.sh"
echo ""
echo "  [3/4] Style 21-30 COMPLETED at: $(date)"
echo "=============================================="
echo ""

# ---- Task 4: Style 31-50 ----
echo "=============================================="
echo "  [4/4] Training Style 31-50"
echo "  Started at: $(date)"
echo "=============================================="
bash "$SCRIPT_DIR/31_50_style.sh"
echo ""
echo "  [4/4] Style 31-50 COMPLETED at: $(date)"
echo "=============================================="
echo ""

echo "=============================================="
echo "  ALL STYLE TRAINING COMPLETED!"
echo "  Finished at: $(date)"
echo "=============================================="
