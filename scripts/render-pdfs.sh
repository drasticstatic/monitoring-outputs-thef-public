#!/bin/sh
# render-pdfs.sh — the monitoring pages' renderer, runnable locally (.github/workflows/pdf.yml does the same on push).
#   sh scripts/render-pdfs.sh            # every arb/*/README.md and perps/*/README.md → pdf/<lane>/<date>.pdf
#   sh scripts/render-pdfs.sh 2026-10-30 # only that date, in every lane
# Adapted from my-template/proposals-template/repo/scripts/render-pdfs.sh: callouts become bold labels, <details> open,
# md-to-pdf@5 (Puppeteer) renders Letter. Tone: brass on slate (d9a441 / 334155 / 8a6a2a / f1f5f9), links and the
# quote bar in THEF amber d97706 (TONES.md: a lab repo borrows the accent of the organisation it serves).
set -eu
cd "$(dirname "$0")/.."
ONLY="${1:-}"
CSS='img{display:inline-block !important;vertical-align:-3px;margin:0 3px} body{font-family:Helvetica,Arial,sans-serif;font-size:10.5pt} h1{color:#334155} h2{color:#334155;border-bottom:2px solid #d9a441;padding-bottom:4px} h3,h4{color:#8a6a2a} a{color:#d97706} blockquote{border-left:4px solid #d97706;background:#f1f5f9;padding:6px 14px;margin-left:0} table{font-size:8.6pt;border-collapse:collapse} th{background:#f1f5f9;color:#334155} td,th{padding:3px 6px} details>summary{font-weight:600;color:#8a6a2a} hr{border:0;border-top:1px solid #d9a441;opacity:.6} sub{color:#8a6a2a}'
for f in arb/*/README.md perps/*/README.md; do
  [ -f "$f" ] || continue
  dir="$(dirname "$f")"; lane="${dir%%/*}"; day="$(basename "$dir")"
  [ -n "$ONLY" ] && [ "$day" != "$ONLY" ] && continue
  out="pdf/$lane/$day.pdf"; mkdir -p "pdf/$lane"
  sed -e 's/<details>/<details open>/g' \
      -e 's/^> \[!TIP\]/> **Tip.**/' -e 's/^> \[!NOTE\]/> **Note.**/' -e 's/^> \[!IMPORTANT\]/> **Important.**/' -e 's/^> \[!WARNING\]/> **Warning.**/' \
      "$f" > "$dir/_print.md"
  PUPPETEER_SKIP_DOWNLOAD=1 PUPPETEER_EXECUTABLE_PATH="${PUPPETEER_EXECUTABLE_PATH:-/Applications/Google Chrome.app/Contents/MacOS/Google Chrome}" \
    npx -y md-to-pdf@5 "$dir/_print.md" --basedir . --css "$CSS" \
    --launch-options '{"args":["--no-sandbox"]}' \
    --pdf-options '{"format":"Letter","margin":{"top":"16mm","bottom":"16mm","left":"14mm","right":"14mm"},"printBackground":true}'
  mv "$dir/_print.pdf" "$out"; rm -f "$dir/_print.md"; echo "$out"
done
