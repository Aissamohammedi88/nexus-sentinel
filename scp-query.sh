#!/usr/bin/env bash
# scp-query.sh - Query the SCP server's /context endpoint for a given file.
#
# Usage:
#   ./scp-query.sh path/to/file.rs
#   ./scp-query.sh path/to/file.rs [host] [port]
#
# Requires: curl, jq
set -euo pipefail

if [[ $# -lt 1 ]]; then
    echo "Usage: $0 <project-relative-file-path> [host] [port]" >&2
    exit 64
fi

FILE="$1"
HOST="${2:-127.0.0.1}"
PORT="${3:-9001}"

# URL-encode the file path (handles slashes by keeping them; encodes spaces, etc.)
ENCODED=$(python3 -c 'import sys, urllib.parse; print(urllib.parse.quote(sys.argv[1], safe="/"))' "$FILE" 2>/dev/null || echo "$FILE")

URL="http://${HOST}:${PORT}/context?file=${ENCODED}"

if command -v jq >/dev/null 2>&1; then
    curl -s "$URL" | jq .
else
    echo "[warn] jq not found, raw output:" >&2
    curl -s "$URL"
    echo
fi
