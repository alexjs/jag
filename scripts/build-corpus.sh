#!/bin/bash
# Rebuild the local Q&A corpus in private/reference/ (gitignored).
# Safe to re-run; requires poppler (`brew install poppler`).
set -euo pipefail

repo="$(cd "$(dirname "$0")/.." && pwd)"
ref="$repo/private/reference"
mkdir -p "$ref"

command -v pdftotext >/dev/null || { echo "pdftotext not found — brew install poppler" >&2; exit 1; }

# 1. Factory manual text — extracted from the committed PDF's embedded OCR layer.
pdftotext "$repo/docs/manual/xj-s-he-repair-manual.pdf" "$ref/manual-ocr.txt"
echo "manual-ocr.txt rebuilt"

# 2. Kirby Palm, Experience in a Book (copyrighted — stays out of git).
#    Primary source: Alex's iCloud copy. Fallback: jag-lovers hosts it free.
palm_icloud="$HOME/Library/Mobile Documents/com~apple~CloudDocs/Personal/Cars/Jaguar XJS 1985/XJS_help.pdf"
if [[ ! -f "$ref/XJS_help.pdf" ]]; then
  if [[ -f "$palm_icloud" ]]; then
    cp "$palm_icloud" "$ref/XJS_help.pdf"
  else
    echo "Palm book PDF not found. Get it from iCloud or http://www.jag-lovers.org/xj-s/book/" >&2
    echo "then place it at private/reference/XJS_help.pdf and re-run." >&2
    exit 1
  fi
fi
pdftotext -layout "$ref/XJS_help.pdf" "$ref/xjs-help.txt"
echo "xjs-help.txt rebuilt"

# 3. Diagnostic sound recordings (catalog: docs/sounds.md). Local mirror only —
#    the site asks that these not be re-hosted.
mkdir -p "$ref/sounds"
for f in bad_ignition_amp coolant_temp_disconnected marginal_ignition_amp \
         throttle_stumble chuffed_starter; do
  [[ -f "$ref/sounds/$f.mp3" ]] || \
    curl -fsS --max-time 30 -o "$ref/sounds/$f.mp3" \
      "http://jaguar.professional.org/sounds/$f.mp3" || \
    echo "warning: could not fetch $f.mp3" >&2
done
echo "sounds mirrored"
