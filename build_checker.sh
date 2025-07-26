#!/bin/bash

QUARTZ_DIR="/srv/quartz"
LOG_DIR="$QUARTZ_DIR/.build_checker"
BUILD_LOG="$LOG_DIR/quartz-build.log"
LOCK_FILE="$QUARTZ_DIR/.build.lock"


# Check of lockfile bestaat
if [ -e "$LOCK_FILE" ]; then
    echo "Script is al bezig met uitvoeren. Afgebroken." | tee -a "$BUILD_LOG"
    exit 1
fi

# Maak lockfile aan en zorg dat het wordt verwijderd bij exit
touch "$LOCK_FILE"
trap 'rm -f "$LOCK_FILE"' EXIT


# Alleen als het logbestand bestaat, ophalen van de timestamp
if [ -f "$BUILD_LOG" ]; then
    # Timestamp op basis van laatste wijziging van het logbestand
    RAW_TS=$(stat -c "%y" "$BUILD_LOG" | cut -d'.' -f1)
    TIMESTAMP=$(stat -c "%y" "$BUILD_LOG" 2>/dev/null | cut -d'.' -f1 | sed 's/[-:]//g' | sed 's/ /T/')
    ARCHIVED_LOG="$LOG_DIR/quartz-build-$TIMESTAMP.log"

    # Hernoemen van het bestaande logbestand
    mv "$BUILD_LOG" "$ARCHIVED_LOG"
fi



echo "🔁 Build gestart op $(date)" | tee -a "$BUILD_LOG"

cd "$QUARTZ_DIR" || exit 1
npx quartz build >> "$BUILD_LOG" 2>&1 && npx quartz sync --no-pull >> "$BUILD_LOG" 2>&1

echo "✅ Build en sync voltooid op $(date)" | tee -a "$BUILD_LOG"

