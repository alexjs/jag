#!/bin/bash
# Render page(s) of the repair manual to PNG for viewing.
# Usage: scripts/manual-page.sh <first-page> [last-page] [dpi]
set -euo pipefail
repo="$(cd "$(dirname "$0")/.." && pwd)"
first="${1:?usage: manual-page.sh <first-page> [last-page] [dpi]}"
last="${2:-$first}"
dpi="${3:-150}"
out="$(mktemp -d)/manual"
pdftoppm -png -r "$dpi" -f "$first" -l "$last" \
  "$repo/docs/manual/xj-s-he-repair-manual.pdf" "$out"
ls "$out"*.png
