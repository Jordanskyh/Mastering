#!/bin/bash
# =============================================================
# all_person.sh
# Menjalankan semua training person secara berurutan (sequential)
# Task 1 selesai -> lanjut Task 2 -> lanjut Task 3
# =============================================================

set -e  # Berhenti otomatis kalau ada error di salah satu script

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "=============================================="
echo "  STARTING ALL PERSON TRAINING PIPELINE"
echo "=============================================="
echo ""

# ---- Task 1: Person 1-10 ----
echo "=============================================="
echo "  [1/3] Training Person 1-10"
echo "  Started at: $(date)"
echo "=============================================="
bash "$SCRIPT_DIR/1_10_person.sh"
echo ""
echo "  [1/3] Person 1-10 COMPLETED at: $(date)"
echo "=============================================="
echo ""

# ---- Task 2: Person 11-20 ----
echo "=============================================="
echo "  [2/3] Training Person 11-20"
echo "  Started at: $(date)"
echo "=============================================="
bash "$SCRIPT_DIR/11_20_person.sh"
echo ""
echo "  [2/3] Person 11-20 COMPLETED at: $(date)"
echo "=============================================="
echo ""

# ---- Task 3: Person 31-50 ----
echo "=============================================="
echo "  [3/3] Training Person 31-50"
echo "  Started at: $(date)"
echo "=============================================="
bash "$SCRIPT_DIR/31_50_person.sh"
echo ""
echo "  [3/3] Person 31-50 COMPLETED at: $(date)"
echo "=============================================="
echo ""

echo "=============================================="
echo "  ALL PERSON TRAINING COMPLETED!"
echo "  Finished at: $(date)"
echo "=============================================="
