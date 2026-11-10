#!/usr/bin/env bash
# Rebuild privacy.md from the policy the app bundles, so the page and the app show
# the same text. Run it from this repo after omnisight's tools/sync_privacy_policy.sh:
#
#   ./update_privacy.sh [path to the omnisight checkout, default ../omnisight]
set -euo pipefail
cd "$(dirname "$0")"
SRC="${1:-../omnisight}/tvos/App/Resources/PrivacyPolicy.md"
[ -s "$SRC" ] || { echo "error: $SRC not found" >&2; exit 1; }
if grep -qE '\[(JOSH|TODO|TBD|FIXME)\b' "$SRC"; then
  echo "error: $SRC still has placeholders; fill them in omnisight first" >&2; exit 1
fi
{ printf -- '---\ntitle: "Privacy Policy"\npermalink: /privacy/\n---\n\n'; cat "$SRC"; } > privacy.md
echo "wrote privacy.md"
