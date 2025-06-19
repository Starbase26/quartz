#!/bin/bash

QUARTZ_DIR="/srv/quartz"
META_DIR="$QUARTZ_DIR/.build_checker"
CONTENT_DIR="$QUARTZ_DIR/content"
SNAPSHOT_FILE="$META_DIR/snapshot.txt"
BUILD_LOG="$QUARTZ_DIR/quartz-build.log"

mkdir -p "$META_DIR"

CURRENT_SNAPSHOT=$(find "$CONTENT_DIR" -type f -printf '%P %T@\n' | sort | sha256sum | awk '{print $1}')
LAST_SNAPSHOT=$(cat "$SNAPSHOT_FILE" 2>/dev/null || echo "")

if [ "$CURRENT_SNAPSHOT" != "$LAST_SNAPSHOT" ]; then
  echo "📦 Wijzigingen gevonden in content – starten build..." | tee -a "$BUILD_LOG"
  cd "$QUARTZ_DIR" || exit 1
  npx quartz build >> "$BUILD_LOG" 2>&1 && npx quartz sync --no-pull >> "$BUILD_LOG" 2>&1
  echo "$CURRENT_SNAPSHOT" > "$SNAPSHOT_FILE"
  echo "✅ Build en sync voltooid op $(date)" | tee -a "$BUILD_LOG"
else
  echo "🕵️‍♂️ Geen wijzigingen sinds laatste build: $(date)" >> "$BUILD_LOG"
fi
